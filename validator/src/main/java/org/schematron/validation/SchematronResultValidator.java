package org.schematron.validation;

import org.schematron.commons.XsltVersion;
import org.schematron.exception.SchematronException;
import org.schematron.model.SchematronResult;
import org.schematron.model.SchematronResultImpl;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import java.io.IOException;

/**
 * SchematronValidator is a processor that checks an XML document against a schematron schema.
 * @author bard.langoy 
 */
public class SchematronResultValidator implements SchematronValidator {
    private SchematronTransformerImpl transformer;

    public SchematronResultValidator(InputSource inputSource, XsltVersion version, LSResourceResolver resolver, boolean compileSchematron) throws TransformerException, IOException, SAXException {
        this.transformer = new SchematronTransformerImpl(inputSource, version, resolver, compileSchematron);
    }

    public SchematronResult validate(Source source) throws SchematronException {
        try {
            return transformer.transform(source);
        } catch (Exception e) {
            throw new SchematronException(e.getMessage(), e);
        }
    }
}
