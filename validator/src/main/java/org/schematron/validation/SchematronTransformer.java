package org.schematron.validation;

import org.schematron.commons.XMLWriter;
import org.schematron.commons.XsltVersion;
import org.schematron.filter.ValidationFilter;
import org.schematron.filter.ValidationFilterFactory;
import org.schematron.loader.SchematronLoader;
import org.schematron.model.SchematronResult;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.XMLReaderFactory;

import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.stream.StreamResult;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;

public class SchematronTransformer {

    public static final int REPORT_IDENTIFY_LENGTH = 1000;

    private Transformer transformer;

    public SchematronTransformer(InputSource inputSource, XsltVersion version, LSResourceResolver resolver, boolean compileSchematron) throws TransformerException, IOException, SAXException {
        SchematronLoader loader = new SchematronLoader();
        this.transformer = loader.loadSchema(inputSource, version, resolver, compileSchematron);
    }

    public SchematronResult transform(Source source) throws SAXException, IOException {
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
}
