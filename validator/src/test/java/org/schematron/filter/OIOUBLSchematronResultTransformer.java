package org.schematron.filter;

import org.schematron.commons.XMLWriter;
import org.schematron.exception.SchematronException;
import org.schematron.model.Assertion;
import org.schematron.model.SchematronResult;
import org.schematron.model.SchematronResultImpl;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.XMLFilterImpl;
import org.xml.sax.helpers.XMLReaderFactory;

import java.io.ByteArrayOutputStream;
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
            return new OIOUBLXMLFilter().transform(source);
        } catch (SAXException e) {
            throw new SchematronException("Error occured when transforming OIOUBL validation report to SchematronResult.", e);
        }
    }

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
                StringBuilder message = new StringBuilder();
                message.append(currentElement.getChildElementWithName(DESCRIPTION_ELEMENT).getMessage());
                message.append(", failed when performing test [");
                message.append(currentElement.getChildElementWithName(CONDITION_ELEMENT).getMessage());
                message.append("] in context [").append(currentElement.getMessage()).append("].");

                result.getErrors().add(new Assertion(currentElement.name, message.toString()));
            }
            currentElement = currentElement.parent;
            super.endElement(namespaceURI, localName, qualifiedName);
        }
    }
}
