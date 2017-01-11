package org.schematron.validation;

import org.schematron.filter.SchematronResultTransformer;
import org.schematron.loader.SchematronLoader;
import org.schematron.model.Assertion;
import org.schematron.model.SchematronResult;
import org.schematron.model.SchematronResultImpl;
import org.schematron.resolver.SchemaURIResolver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.validation.Validator;
import java.io.IOException;

/**
 * SchematronValidator is a processor that checks an XML document against a schematron schema.
 * @author bard.langoy 
 */
public class SchematronJavaxValidator extends Validator {
    static Logger logger = LoggerFactory.getLogger(SchematronLoader.class);
    private ErrorHandler errorHandler;
    private LSResourceResolver resourceResolver;
    private SchematronTransformer transformer;
    private SchematronResultTransformer schematronResultTransformer;

    public SchematronJavaxValidator(InputSource inputSource, LSResourceResolver resolver, SchematronResultTransformer schematronResultTransformer) throws TransformerException, IOException, SAXException {
        this.resourceResolver = resolver;
        this.transformer = new SchematronTransformer(inputSource, new SchemaURIResolver(resolver));
        this.schematronResultTransformer = schematronResultTransformer;
    }

    @Override
    public void reset() {
        logger.info("Method reset() called for SchematronValidator...");
    }

    @Override
    public void validate(Source source, Result result) throws SAXException, IOException {
        SchematronResult schematronResult;
        if (schematronResultTransformer != null) {
            schematronResult = transformer.validate(source, schematronResultTransformer);
        } else {
            schematronResult = transformer.validate(source);
        }

        insertSchematronResultToErrorHandler(schematronResult);

        if (!isValid(schematronResult)) {
            if (schematronResult instanceof SchematronResultImpl) {
                throw new SAXException(((SchematronResultImpl)schematronResult).toXml());
            } else {
                throw new SAXException(schematronResult.toString());
            }
        }
    }

    private void insertSchematronResultToErrorHandler(SchematronResult schematronResult) throws SAXException {
        for (Assertion assertion : schematronResult.getWarnings()) {
            getErrorHandler().warning(new SAXParseException(assertion.getDescription(), assertion.getName(), assertion.getName(), -1, -1));
        }
        for (Assertion assertion : schematronResult.getErrors()) {
            getErrorHandler().error(new SAXParseException(assertion.getDescription(), assertion.getName(), assertion.getName(), -1, -1));
        }
        for (Assertion assertion : schematronResult.getFatals()) {
            getErrorHandler().fatalError(new SAXParseException(assertion.getDescription(), assertion.getName(), assertion.getName(), -1, -1));
        }
    }

    @Override
    public void setErrorHandler(ErrorHandler errorHandler) {
        this.errorHandler = errorHandler;
    }

    @Override
    public ErrorHandler getErrorHandler() {
        return errorHandler;
    }

    @Override
    public void setResourceResolver(LSResourceResolver resourceResolver) {
        this.resourceResolver = resourceResolver;
    }

    @Override
    public LSResourceResolver getResourceResolver() {
        return resourceResolver;
    }

    public boolean isValid(SchematronResult result) {
        return result.getErrors().isEmpty() && result.getFatals().isEmpty();
    }
}
