package org.schematron.validation;

import org.schematron.commons.XMLWriter;
import org.schematron.commons.XsltVersion;
import org.schematron.exception.SchematronException;
import org.schematron.filter.ValidationFilter;
import org.schematron.filter.ValidationFilterFactory;
import org.schematron.loader.SchematronLoader;
import org.schematron.model.SchematronResult;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.XMLReaderFactory;

import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;
import javax.xml.transform.stream.StreamResult;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;

public class SchematronTransformer implements SchematronValidator {

    public static final int REPORT_IDENTIFY_LENGTH = 1000;

    private Transformer transformer;

    public SchematronTransformer(InputSource inputSource, XsltVersion version, URIResolver resolver) throws TransformerException, IOException, SAXException {
        SchematronLoader loader = new SchematronLoader();
        this.transformer = loader.loadSchema(inputSource, version, resolver);
    }

    private SchematronResult transform(Source source) throws SAXException, IOException {
        try {
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            transformer.setParameter("terminate", "no");
            transformer.transform(source, new StreamResult(baos));

            return createSchematronResult(baos);
        } catch (TransformerException e) {
            throw new SAXException(e.getMessage(), e);
        }
    }

    private ValidationFilter createAndInitializeFilter(String report) throws SAXException {
        ValidationFilter filter = ValidationFilterFactory.identifyAndCreateReportValidator(report);
        filter.setParent(XMLReaderFactory.createXMLReader());
        filter.setContentHandler(new XMLWriter(new OutputStreamWriter(new ByteArrayOutputStream())));
        return filter;
    }

    private SchematronResult createSchematronResult(ByteArrayOutputStream baos) throws SAXException, IOException {
        byte[] reportBytes = baos.toByteArray();
        ValidationFilter filter = createAndInitializeFilter(new String(reportBytes, 0, Math.min(REPORT_IDENTIFY_LENGTH, reportBytes.length)));
        filter.parse(new InputSource(new ByteArrayInputStream(reportBytes)));

        return filter.getSchematronResult();
    }

    public SchematronResult validate(Source source) throws SchematronException {
        try {
            return transform(source);
        } catch (Exception e) {
            throw new SchematronException(e.getMessage(), e);
        }
    }
}
