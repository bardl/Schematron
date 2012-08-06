package org.schematron.filter;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

/**
 * ValidationFilter parse the SVRL validation-report and generates events to ErrorHandler if an error is
 * encountered. It also flags if the validated document is invalid or not. This filter is used by
 * {@link org.schematron.validation.SchematronValidator}.
 * @author bard.langoy
 */
public class OIOUBLValidationFilter extends ValidationFilter {

    private final String ERROR_ELEMENT = "Error";
    private final String DESCRIPTION_ELEMENT = "Description";
    private final String CONDITION_ELEMENT = "Pattern";

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
            message.append("] in context [" + currentElement.getMessage() + "].");

            getErrorHandler().error(new SAXParseException(message.toString(), currentElement.name, currentElement.name, -1, -1));

            errorReport.append(message);
            errorReport.append("\n");
        }
        currentElement = currentElement.parent;
        super.endElement(namespaceURI, localName, qualifiedName);
    }

    @Override
    public String getMatchPattern() {
        return ".*?(<Schematron ).*?(<Information>Checking OIOUBL).*";
    }
}
