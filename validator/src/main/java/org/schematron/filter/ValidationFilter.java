package org.schematron.filter;

import org.schematron.model.SchematronResult;
import org.xml.sax.helpers.XMLFilterImpl;

public abstract class ValidationFilter extends XMLFilterImpl {
    protected ElementPath currentElement;
    protected boolean valid = true;
    protected SchematronResult result = new SchematronResult();

    public SchematronResult getSchematronResult() {
        return result;
    }

    public boolean isValid() {
        return valid;
    }

    public abstract String getMatchPattern();
}
