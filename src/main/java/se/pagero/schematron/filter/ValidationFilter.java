package se.pagero.schematron.filter;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.helpers.XMLFilterImpl;

/**
 * ValidationFilter parse the SVRL validation-report and generates events to ErrorHandler if an error is
 * encountered. It also flags if the validated document is invalid or not. This filter is used by
 * {@link se.pagero.schematron.validation.SchematronValidator}. 
 * @author bard.langoy
 */
public class ValidationFilter extends XMLFilterImpl {

    private ElementPath currentElement;
    private boolean valid = true;
    private StringBuilder errorReport = new StringBuilder();

    public String getErrorReport() {
        return errorReport.toString();
    }

    public void startElement(String namespaceURI, String localName, String qualifiedName, Attributes atts) throws SAXException {
        currentElement = new ElementPath(localName, currentElement);
        if (currentElement.name.equals("failed-assert")) {
            currentElement.setMessage(atts.getValue("test"));
            valid = false;
        }

        super.startElement(namespaceURI, localName, qualifiedName, atts);
    }

    @Override
    public void characters(char[] ch, int start, int length) throws SAXException {
        if (currentElement.name.equals("text")) {
            StringBuilder message = new StringBuilder();
            message.append(ch, start, length);
            message.append(" Failed when performing test [");
            message.append(currentElement.parent.getMessage());
            message.append("].");

            if (getErrorHandler() != null) {
                getErrorHandler().error(new SAXParseException(message.toString(), currentElement.name, currentElement.name, -1, -1));
            }

            errorReport.append(message);
            errorReport.append("\n");
        }

        super.characters(ch, start, length);
    }

    public void endElement(String namespaceURI, String localName, String qualifiedName) throws SAXException {
        currentElement = currentElement.parent;
        super.endElement(namespaceURI, localName, qualifiedName);
    }

    public boolean isValid() {
        return valid;
    }

    private class ElementPath {
        String name;
        ElementPath parent;
        String message;

        ElementPath(String name, ElementPath parent) {
            this.name = name;
            this.parent = parent;
        }

        public String getMessage() {
            return message;
        }

        public void setMessage(String message) {
            this.message = message;
        }
    }
}
