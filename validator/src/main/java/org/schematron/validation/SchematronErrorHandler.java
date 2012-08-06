package org.schematron.validation;

import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

/**
 * SchematronErrorHandler is a default ErrorHandler used for catching error events produced in
 * {@link org.schematron.validation.SchematronValidator}.
 * @author bard.langoy
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
