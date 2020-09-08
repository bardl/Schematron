package org.schematron.filter;

import org.schematron.commons.XMLWriter;
import org.schematron.exception.SchematronException;
import org.schematron.model.Assertion;
import org.schematron.model.SchematronResult;
import org.schematron.model.SchematronResultImpl;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.XMLFilterImpl;
import org.xml.sax.helpers.XMLReaderFactory;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;

/**
 * ValidationFilter parse the SVRL validation-report and generates events to ErrorHandler if an error is
 * encountered. It also flags if the validated document is invalid or not. This filter is used by
 * {@link org.schematron.validation.SchematronValidator}.
 * @author bard.langoy
 */
public class SVRLSchematronResultTransformer implements SchematronResultTransformer {

    public SchematronResult transform(InputSource source) throws SchematronException {
        try {
            SchematronResultImpl schematronResult = new SchematronResultImpl();

            DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
            Document doc = dBuilder.parse(source);
            doc.getDocumentElement().normalize();

            handleErrors(schematronResult, doc.getElementsByTagName("svrl:failed-assert"));
            handleErrors(schematronResult, doc.getElementsByTagName("svrl:successful-report"));

            return schematronResult;
        } catch (SAXException e) {
            throw new SchematronException("Error occured when transforming Schematron Validation Report Language (SVRL) to SchematronResult.", e);
        } catch (ParserConfigurationException e) {
            throw new SchematronException("Error occured when transforming Schematron Validation Report Language (SVRL) to SchematronResult.", e);
        } catch (IOException e) {
            throw new SchematronException("Error occured when transforming Schematron Validation Report Language (SVRL) to SchematronResult.", e);
        }
    }

    private void handleErrors(SchematronResultImpl schematronResult, NodeList nList) {
        for (int i = 0; i < nList.getLength(); i++) {
            Node failedNode = nList.item(i);
            String flag = getAttributeContent(failedNode, "flag", "error");
            String test = getAttributeContent(failedNode, "test", "");
            String location = getAttributeContent(failedNode, "location", "");

            NodeList texts = failedNode.getChildNodes();
            for (int j = 0; j < texts.getLength(); j++) {
                Node current = texts.item(j);
                if (current.getNodeName().contentEquals("svrl:text")) {
                    String failedText = current.getTextContent();
                    addAssertion(schematronResult, failedText, flag, test, location);
                }
            }
        }
    }

    private String getAttributeContent(Node failedNode, String name, String defaultValue) {
        if (failedNode.getAttributes().getNamedItem(name) != null) {
            return failedNode.getAttributes().getNamedItem(name).getTextContent();
        } else {
            return defaultValue;
        }
    }

    private void addAssertion(SchematronResultImpl schematronResult, String text, String level, String test, String location) {
        StringBuilder message = getErrorDescription(text, getLevelDisplayText(level), test);

        if (level.equalsIgnoreCase("warning")) {
            schematronResult.getWarnings().add(new Assertion(text, message.toString(), test, location));
        } else if (level.equalsIgnoreCase("error")) {
            schematronResult.getErrors().add(new Assertion(text, message.toString(), test, location));
        } else if (level.equalsIgnoreCase("fatal")) {
            schematronResult.getFatals().add(new Assertion(text, message.toString(), test, location));
        }
    }

    private String getLevelDisplayText(String level) {
        if (level.equalsIgnoreCase("warning")) {
            return "Warning";
        } else if (level.equalsIgnoreCase("error")) {
            return "Error";
        } else if (level.equalsIgnoreCase("fatal")) {
            return "Fatal error";
        } else {
            throw new SchematronException("Error occured when transforming Schematron Validation Report Language (SVRL) to SchematronResult. Unable to identify flag [" + level + "].");
        }
    }

    private StringBuilder getErrorDescription(String text, String level, String test) {

        StringBuilder message = new StringBuilder();
        message.append(text);
        message.append(" ");
        message.append(level);
        message.append(" when performing test [");
        message.append(test);
        message.append("].");
        return message;
    }

    private class SVRLXMLFilter extends XMLFilterImpl {
        protected ElementPath currentElement;
        protected boolean valid = true;
        protected SchematronResultImpl result;

        private SVRLXMLFilter() throws SAXException {
            super();
            setParent(XMLReaderFactory.createXMLReader());
            setContentHandler(new XMLWriter(new OutputStreamWriter(new ByteArrayOutputStream())));
        }

        public SchematronResult transform(InputSource source) throws SchematronException {
            result = new SchematronResultImpl();
            currentElement = null;
            valid = true;
            try {
                parse(source);
                return result;
            } catch (Exception e) {
                throw new SchematronException("Error occured when transforming Schematron Validation Report Language (SVRL) to SchematronResult.", e);
            }
        }

        public void startElement(String namespaceURI, String localName, String qualifiedName, Attributes atts) throws SAXException {
            currentElement = new ElementPath(localName, currentElement);
            if (currentElement.name.equals("failed-assert")) {
                currentElement.setMessage(atts.getValue("test"));
                currentElement.setLevel(convertFlagToValidationLevel(atts.getValue("flag")));

                if (currentElement.getLevel() == ValidationLevel.ERROR || currentElement.getLevel() == ValidationLevel.FATAL) {
                    valid = false;
                }
            }

            super.startElement(namespaceURI, localName, qualifiedName, atts);
        }

        private ValidationLevel convertFlagToValidationLevel(String value) {
            ValidationLevel result = null;

            if (value == null || value.isEmpty()) {
                result = ValidationLevel.ERROR;
            } else if ("warning".equals(value.toLowerCase())) {
                result = ValidationLevel.WARN;
            } else if ("error".equals(value.toLowerCase())) {
                result = ValidationLevel.ERROR;
            } else if ("fatal".equals(value.toLowerCase())) {
                result = ValidationLevel.FATAL;
            }

            if (result == null) {
                throw new SchematronException("Unable to parse validation error level [" + value + "] when executing validation filter for test [" + currentElement.getMessage() + "].");
            }

            return result;
        }

        @Override
        public void characters(char[] ch, int start, int length) throws SAXException {
            if (currentElement.name.equals("text")) {
                StringBuilder message = new StringBuilder();
                String name = new String(ch, start, length).trim();
                message.append(name);
                message.append(" ");
                message.append(currentElement.parent.getLevel().getDisplayString());
                message.append(" when performing test [");
                message.append(currentElement.parent.getMessage());
                message.append("].");

                if (currentElement.parent.getLevel() == ValidationLevel.ERROR) {
                    result.getErrors().add(new Assertion(name, message.toString(), "", ""));
                } else if (currentElement.parent.getLevel() == ValidationLevel.WARN) {
                    result.getWarnings().add(new Assertion(name, message.toString(), "", ""));
                } else if (currentElement.parent.getLevel() == ValidationLevel.FATAL) {
                    result.getFatals().add(new Assertion(name, message.toString(), "", ""));
                }
            }

            super.characters(ch, start, length);
        }

        public void endElement(String namespaceURI, String localName, String qualifiedName) throws SAXException {
            currentElement = currentElement.parent;
            super.endElement(namespaceURI, localName, qualifiedName);
        }
    }
}
