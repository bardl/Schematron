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
public class OIOUBLSchematronResultTransformer implements SchematronResultTransformer {

    public SchematronResult transform(InputSource source) throws SchematronException {
        try {
            SchematronResultImpl schematronResult = new SchematronResultImpl();

            DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
            Document doc = dBuilder.parse(source);
            doc.getDocumentElement().normalize();

            NodeList nList = doc.getElementsByTagName("Error");
            for (int i = 0; i < nList.getLength(); i++) {
                Node failedNode = nList.item(i);
                String flag = "error";
                String failedText = "";
                String xpath = "";
                StringBuilder pattern = new StringBuilder();

                NodeList texts = failedNode.getChildNodes();
                for (int j = 0; j < texts.getLength(); j++) {
                    Node current = texts.item(j);
                    if (current.getNodeName().contentEquals("Xpath")) {
                        xpath = current.getTextContent();
                    } else if (current.getNodeName().contentEquals("Description")) {
                        failedText = current.getTextContent();
                    } else if (current.getNodeName().contentEquals("Pattern")) {
                        pattern.append("[").append(current.getTextContent()).append("]");
                    }
                }
                addAssertion(schematronResult, failedText, flag, xpath + pattern.toString());
            }
            return schematronResult;
        } catch (SAXException e) {
            throw new SchematronException("Error occured when transforming OIOUBL Schematron Validation Report to SchematronResult.", e);
        } catch (ParserConfigurationException e) {
            throw new SchematronException("Error occured when transforming OIOUBL Schematron Validation Report to SchematronResult.", e);
        } catch (IOException e) {
            throw new SchematronException("Error occured when transforming OIOUBL Schematron Validation Report to SchematronResult.", e);
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

    private void addAssertion(SchematronResultImpl schematronResult, String text, String level, String test) {
        StringBuilder message = getErrorDescription(text, getLevelDisplayText(level), test);

        if (level.equalsIgnoreCase("warning")) {
            schematronResult.getWarnings().add(new Assertion(text, message.toString()));
        } else if (level.equalsIgnoreCase("error")) {
            schematronResult.getErrors().add(new Assertion(text, message.toString()));
        } else if (level.equalsIgnoreCase("fatal")) {
            schematronResult.getFatals().add(new Assertion(text, message.toString()));
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

    /*public SchematronResult transform(InputSource source) throws SchematronException {
        try {
            return new OIOUBLXMLFilter().transform(source);
        } catch (SAXException e) {
            throw new SchematronException("Error occured when transforming OIOUBL validation report to SchematronResult.", e);
        }
    }*/

    private class OIOUBLXMLFilter extends XMLFilterImpl {

        protected ElementPath currentElement;
        protected boolean valid = true;
        protected SchematronResultImpl result;

        private final String ERROR_ELEMENT = "Error";
        private final String DESCRIPTION_ELEMENT = "Description";
        private final String CONDITION_ELEMENT = "Pattern";

        private OIOUBLXMLFilter() throws SAXException {
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
                throw new SchematronException("Error occured when transforming OIOUBL validation report to SchematronResult.", e);
            }
        }

        public void startElement(String namespaceURI, String localName, String qualifiedName, Attributes atts) throws SAXException {
            currentElement = new ElementPath(localName, currentElement);
            if (currentElement.name.equals(ERROR_ELEMENT)) {
                valid = false;
                currentElement.setMessage(atts.getValue("context"));
            }

            super.startElement(namespaceURI, localName, qualifiedName, atts);
        }

        @Override
        public void characters(char[] ch, int start, int length) throws SAXException {
            if (currentElement.name.equals(CONDITION_ELEMENT)) {
                currentElement.setMessage(new String(ch, start, length));
            } else if (currentElement.name.equals(DESCRIPTION_ELEMENT)) {
                currentElement.setMessage(new String(ch, start, length));
            }

            super.characters(ch, start, length);
        }

        public void endElement(String namespaceURI, String localName, String qualifiedName) throws SAXException {
            if (localName.equals(ERROR_ELEMENT)) {
                String description = currentElement.getChildElementWithName(DESCRIPTION_ELEMENT).getMessage();
                StringBuilder message = new StringBuilder();
                message.append(description);
                message.append(", failed when performing test [");
                message.append(currentElement.getChildElementWithName(CONDITION_ELEMENT).getMessage());
                message.append("] in context [").append(currentElement.getMessage()).append("].");

                result.getErrors().add(new Assertion(description, message.toString()));
            }
            currentElement = currentElement.parent;
            super.endElement(namespaceURI, localName, qualifiedName);
        }
    }
}
