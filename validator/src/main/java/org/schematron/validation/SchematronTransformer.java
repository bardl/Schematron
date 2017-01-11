package org.schematron.validation;

import org.schematron.exception.SchematronException;
import org.schematron.filter.SVRLSchematronResultTransformer;
import org.schematron.filter.SchematronResultTransformer;
import org.schematron.loader.SchematronLoader;
import org.schematron.model.SchematronResult;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;
import javax.xml.transform.stream.StreamResult;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

public class SchematronTransformer implements SchematronValidator {

    private Transformer transformer;

    public SchematronTransformer(InputSource inputSource, URIResolver resolver) throws TransformerException, IOException, SAXException {
        SchematronLoader loader = new SchematronLoader();
        this.transformer = loader.loadSchema(inputSource, resolver);
    }

    private SchematronResult transform(Source source, SchematronResultTransformer validationFilter) throws SAXException, IOException {
        try {
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            transformer.setParameter("terminate", "no");
            transformer.transform(source, new StreamResult(baos));

            return createSchematronResult(baos, validationFilter);
        } catch (TransformerException e) {
            throw new SAXException(e.getMessage(), e);
        }
    }

    private SchematronResult createSchematronResult(ByteArrayOutputStream baos, SchematronResultTransformer resultTransformer) throws SAXException, IOException {
        byte[] reportBytes = baos.toByteArray();
        return resultTransformer.transform(new InputSource(new ByteArrayInputStream(reportBytes)));
    }

    public SchematronResult validate(Source source) throws SchematronException {
        try {
            return validate(source, new SVRLSchematronResultTransformer());
        } catch (Exception e) {
            throw new SchematronException(e.getMessage(), e);
        }
    }

    public SchematronResult validate(Source source, SchematronResultTransformer validationFilter) throws SchematronException {
        try {
            return transform(source, validationFilter);
        } catch (Exception e) {
            throw new SchematronException(e.getMessage(), e);
        }
    }
}
