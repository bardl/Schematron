package org.schematron.validation;

import org.apache.log4j.Logger;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.*;
import org.xml.sax.helpers.XMLReaderFactory;
import org.schematron.commons.XMLWriter;
import org.schematron.commons.XsltVersion;
import org.schematron.filter.ValidationFilter;
import org.schematron.filter.ValidationFilterFactory;
import org.schematron.loader.SchematronLoader;

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

    public static final int REPORT_IDENTIFY_LENGTH = 1000;

    static Logger logger = Logger.getLogger(SchematronLoader.class);
    private ErrorHandler errorHandler;
    private LSResourceResolver resourceResolver;
    private Transformer transformer;

    public SchematronValidator(InputSource inputSource, XsltVersion version, LSResourceResolver resolver, boolean compileSchematron) throws TransformerException, IOException, SAXException {
        this.resourceResolver = resolver;

        SchematronLoader loader = new SchematronLoader();
        this.transformer = loader.loadSchema(inputSource, version, resolver, compileSchematron);
    }

    @Override
    public void reset() {
        logger.info("Method reset() called for SchematronValidator...");
    }

    @Override
    public void validate(Source source, Result result) throws SAXException, IOException {
        try {
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            transformer.setParameter("terminate", "no");
            transformer.transform(source, new StreamResult(baos));

            byte[] reportBytes = baos.toByteArray();
            ValidationFilter filter = createAndInitializeFilter(new String(reportBytes, 0, Math.min(REPORT_IDENTIFY_LENGTH, reportBytes.length)));
            filter.parse(new InputSource(new ByteArrayInputStream(reportBytes)));

            if (!filter.isValid()) {
                throw new SAXException(filter.getErrorReport());
            }
        } catch (TransformerException e) {
            throw new SAXException(e.getMessage(), e);
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

    private ValidationFilter createAndInitializeFilter(String report) throws SAXException {
        ValidationFilter filter = ValidationFilterFactory.identifyAndCreateReportValidator(report);
        filter.setErrorHandler(errorHandler);
        filter.setParent(XMLReaderFactory.createXMLReader());
        filter.setContentHandler(new XMLWriter(new OutputStreamWriter(new ByteArrayOutputStream())));
        filter.setErrorHandler(getErrorHandler());
        return filter;
    }

}
