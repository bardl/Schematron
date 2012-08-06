package org.schematron.filter;

import org.xml.sax.helpers.XMLFilterImpl;

public abstract class ValidationFilter extends XMLFilterImpl {
    protected ElementPath currentElement;
    protected boolean valid = true;
    protected StringBuilder errorReport = new StringBuilder();

    public String getErrorReport() {
        return errorReport.toString();
    }

    public boolean isValid() {
        return valid;
    }

    public abstract String getMatchPattern();
}
