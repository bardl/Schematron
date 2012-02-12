package se.pagero.schematron.validation;

import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import se.pagero.schematron.commons.XsltVersion;

import javax.xml.transform.Source;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.Validator;
import javax.xml.validation.ValidatorHandler;

/**
 * Created by IntelliJ IDEA.
 * User: bardl
 * Date: 2012-01-29
 * Time: 10:25
 * To change this template use File | Settings | File Templates.
 */
public class SchematronSchema extends Schema {

    Source[] sources;
    LSResourceResolver resolver;
    ErrorHandler errorHandler;

    public SchematronSchema(Source source, LSResourceResolver resolver, ErrorHandler errorHandler) {
        this(new Source[]{source}, resolver, errorHandler);
    }

    public SchematronSchema(Source[] sources, LSResourceResolver resolver, ErrorHandler errorHandler) {
        this.sources = sources;
        this.resolver = resolver;
        this.errorHandler = errorHandler;
    }

    @Override
    public Validator newValidator() {
        if (sources == null || sources.length == 0) {
            //TODO:: Create specific SchematronRuntimeException.
            throw new RuntimeException("No sources provided for schematron validator.");
        }

        try {
            //TODO:: build support for multiple sources.

            Validator validator = new SchematronValidator(getInputSource(sources[0]), XsltVersion.XSL_VERSION_2, resolver);
            validator.setErrorHandler(errorHandler);
            return validator;
        } catch (Exception e) {
            //TODO:: Create specific SchematronRuntimeException.
            throw new RuntimeException("Unexpected error occured when creating SchematronValidator.", e);
        }
    }

    private InputSource getInputSource(Source source) throws SAXException {
        if (source instanceof StreamSource) {
            StreamSource streamSource = (StreamSource) source;
            String publicId = streamSource.getPublicId();
            String systemId = streamSource.getSystemId();
            return new InputSource(streamSource.getInputStream());
        } else if (source instanceof SAXSource) {
            SAXSource saxSource = (SAXSource) source;
            InputSource inputSource = saxSource.getInputSource();
            if (inputSource == null) {
                throw new SAXException("");
            }
            return inputSource;
        } else {
            throw new IllegalArgumentException("Unexpected type of Source [" + source.getClass().getSimpleName() + "]. Supported source types are StreamSource and SAXSource.");
        }
    }

    @Override
    public ValidatorHandler newValidatorHandler() {
        return null;
    }
}
