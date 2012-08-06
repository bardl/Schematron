package org.schematron.filter;

import org.junit.Assert;
import org.junit.Test;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.XMLReaderFactory;
import org.schematron.commons.XMLWriter;
import org.schematron.validation.SchematronErrorHandler;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;

public class OIOUBLValidationFilterTest {

    @Test
    public void testIncorrectValidationReport() throws IOException, SAXException {
        InputStream inputStream = getClass().getClassLoader().getResourceAsStream("org/schematron/filter/oioubl-validationreport-error.xml");
        OIOUBLValidationFilter validationFilter = createAndInitiateValidationFilter();
        validationFilter.parse(new InputSource(inputStream));

        Assert.assertFalse(validationFilter.isValid());
        Assert.assertEquals(validationFilter.getErrorReport(), "[F-INV001] Root element must be Invoice, failed when performing test [local-name(*) = 'Invoice'] in context [/].\n");
    }

    @Test
    public void testCorrectValidationReport() throws IOException, SAXException {
        InputStream inputStream = getClass().getClassLoader().getResourceAsStream("org/schematron/filter/oioubl-validationreport-ok.xml");
        OIOUBLValidationFilter validationFilter = createAndInitiateValidationFilter();
        validationFilter.parse(new InputSource(inputStream));

        Assert.assertTrue(validationFilter.isValid());
    }

    private OIOUBLValidationFilter createAndInitiateValidationFilter() throws SAXException {
        OIOUBLValidationFilter validationFilter = new OIOUBLValidationFilter();
        validationFilter.setParent(XMLReaderFactory.createXMLReader());
        validationFilter.setContentHandler(new XMLWriter(new OutputStreamWriter(new ByteArrayOutputStream())));
        validationFilter.setErrorHandler(new SchematronErrorHandler());
        return validationFilter;
    }
}
