package se.pagero.schematron.validation;

import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

/**
 * Created by IntelliJ IDEA.
 * User: bardl
 * Date: 2012-01-30
 * Time: 07:32
 * To change this template use File | Settings | File Templates.
 */
public class SchematronErrorHandler implements ErrorHandler {
    private StringBuilder errorReport = new StringBuilder();

    public String getErrorReport() {
        return errorReport.toString();
    }

    public void warning(SAXParseException exception) throws SAXException {
        errorReport.append(getErrorMessage("Warn", exception));
    }

    public void error(SAXParseException exception) throws SAXException {
        errorReport.append(getErrorMessage("Error", exception));
    }

    public void fatalError(SAXParseException exception) throws SAXException {
        errorReport.append(getErrorMessage("Fatal", exception));
    }

    private StringBuilder getErrorMessage(String level, SAXParseException exception) {
        StringBuilder message = new StringBuilder();
        message.append(level);
        message.append(": ");
        message.append(exception.getMessage());
        message.append(", at line [");
        message.append(exception.getLineNumber());
        message.append("], column [");
        message.append(exception.getColumnNumber());
        message.append("].\n");
        return message;
    }
}
