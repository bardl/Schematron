package org.schematron.validation;

import org.schematron.exception.SchematronException;
import org.schematron.filter.SchematronResultTransformer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import javax.xml.transform.Source;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.Validator;
import javax.xml.validation.ValidatorHandler;

/**
 * SchematronSchema contains schema for creating a {@link SchematronValidator}
 * @author bard.langoy
 */
public class SchematronSchema extends Schema {

    static Logger logger = LoggerFactory.getLogger(SchematronSchema.class);

    Source[] sources;
    LSResourceResolver resolver;
    ErrorHandler errorHandler;
    SchematronResultTransformer schematronResultTransformer;

    public SchematronSchema(Source source, LSResourceResolver resolver, ErrorHandler errorHandler, SchematronResultTransformer schematronResultTransformer) {
        this(new Source[]{source}, resolver, errorHandler, schematronResultTransformer);
    }

    public SchematronSchema(Source[] sources, LSResourceResolver resolver, ErrorHandler errorHandler, SchematronResultTransformer schematronResultTransformer) {
        this.sources = sources;
        this.resolver = resolver;
        this.errorHandler = errorHandler;
        this.schematronResultTransformer = schematronResultTransformer;
    }

    @Override
    public Validator newValidator() {
        if (sources == null || sources.length == 0) {
            throw new SchematronException("No sources provided for schematron validator.");
        }

        if (sources.length > 1) {
            logger.warn("Schematron does not support multiple sources. Use LSResourceResolver instead.");
        }

        try {
            Validator validator = new SchematronJavaxValidator(getInputSource(sources[0]), resolver, schematronResultTransformer);
            validator.setErrorHandler(errorHandler);
            return validator;
        } catch (Exception e) {
            throw new SchematronException("Unexpected error occured when creating SchematronValidator.", e);
        }
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

    @Override
    public ValidatorHandler newValidatorHandler() {
        return null;
    }
}
