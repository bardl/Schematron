package org.schematron.filter;

import org.schematron.exception.SchematronException;
import org.schematron.model.SchematronResult;
import org.xml.sax.InputSource;

public interface SchematronResultTransformer {
    SchematronResult transform(InputSource source) throws SchematronException;

}
