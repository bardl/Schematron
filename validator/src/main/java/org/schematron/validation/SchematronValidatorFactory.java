package org.schematron.validation;

import org.schematron.commons.XsltVersion;
import org.schematron.exception.SchematronException;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import javax.xml.transform.Source;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stream.StreamSource;

/**
 * SchematronValidatorFactory is a factory that creates {@link SchematronValidator} objects.
 * @author bard.langoy
 */
public class SchematronValidatorFactory {

    private LSResourceResolver resourceResolver;
    private boolean compileSchematron = false;

    public SchematronValidator newSchematronValidator(Source source) throws SchematronException {
        try {
            return new SchematronResultValidator(getInputSource(source), XsltVersion.XSL_VERSION_2, resourceResolver, compileSchematron);
        } catch (Exception e) {
            throw new SchematronException("Unable to instantiate SchematronValidator.", e);
        }
    }

    public boolean isCompileSchematron() {
        return compileSchematron;
    }

    public void setCompileSchematron(boolean compileSchematron) {
        this.compileSchematron = compileSchematron;
    }

    public void setResourceResolver(LSResourceResolver resourceResolver) {
        this.resourceResolver = resourceResolver;
    }

    public LSResourceResolver getResourceResolver() {
        return resourceResolver;
    }

    private InputSource getInputSource(Source source) throws SAXException {
        if (source instanceof StreamSource) {
            StreamSource streamSource = (StreamSource) source;
            return new InputSource(streamSource.getInputStream());
        } else if (source instanceof SAXSource) {
            SAXSource saxSource = (SAXSource) source;
            InputSource inputSource = saxSource.getInputSource();
            if (inputSource == null) {
               throw new SAXException("Source (SAXSource) provided for loading a schematron schema does not contain a InputSource.");
            }
            return inputSource;
        } else {
            throw new IllegalArgumentException("Unexpected type of Source [" + source.getClass().getSimpleName() + "]. Supported source types are StreamSource and SAXSource.");
        }
    }
}
