package org.schematron.validation;

import org.schematron.exception.SchematronException;
import org.schematron.resolver.NullResourceResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import javax.xml.transform.Source;
import javax.xml.transform.URIResolver;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stream.StreamSource;

/**
 * SchematronValidatorFactory is a factory that creates {@link SchematronValidator} objects.
 * @author bard.langoy
 */
public class SchematronValidatorFactory {

    private URIResolver resourceResolver;

    public SchematronValidator newSchematronValidator(Source source) throws SchematronException {
        try {
            URIResolver resolver = getResourceResolver();
            if (resolver == null) {
                resolver = new NullResourceResolver();
            }

            return new SchematronTransformer(getInputSource(source), resolver);
        } catch (Exception e) {
            throw new SchematronException("Unable to instantiate SchematronValidator.", e);
        }
    }

    public void setResourceResolver(URIResolver resourceResolver) {
        this.resourceResolver = resourceResolver;
    }

    public URIResolver getResourceResolver() {
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
