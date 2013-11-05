package org.schematron.validation;

import org.apache.log4j.Logger;
import org.schematron.model.Assertion;
import org.schematron.model.SchematronResult;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.*;
import org.xml.sax.helpers.XMLReaderFactory;
import org.schematron.commons.XMLWriter;
import org.schematron.commons.XsltVersion;
import org.schematron.filter.ValidationFilter;
import org.schematron.filter.ValidationFilterFactory;
import org.schematron.loader.SchematronLoader;

import javax.xml.bind.JAXBContext;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.stream.StreamResult;
import javax.xml.validation.Validator;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;

/**
 * SchematronValidator is a processor that checks an XML document against a schematron schema.
 * @author bard.langoy 
 */
public class SchematronValidator extends Validator {



    static Logger logger = Logger.getLogger(SchematronLoader.class);
    private ErrorHandler errorHandler;
    private LSResourceResolver resourceResolver;
    private SchematronTransformer transformer;

    public SchematronValidator(InputSource inputSource, XsltVersion version, LSResourceResolver resolver, boolean compileSchematron) throws TransformerException, IOException, SAXException {
        this.resourceResolver = resolver;
        this.transformer = new SchematronTransformer(inputSource, version, resolver, compileSchematron);
    }

    @Override
    public void reset() {
        logger.info("Method reset() called for SchematronValidator...");
    }

    @Override
    public void validate(Source source, Result result) throws SAXException, IOException {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        SchematronResult schematronResult = transformer.transform(source);

        insertSchematronResultToErrorHandler(schematronResult);

        if (!schematronResult.isValid()) {
            throw new SAXException(schematronResult.toXml());
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



}
