package org.schematron.filter;

import org.junit.Assert;
import org.junit.Test;
import org.schematron.commons.XMLWriter;
import org.schematron.model.SchematronResult;
import org.schematron.validation.SchematronErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.XMLReaderFactory;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;

public class OIOUBLValidationFilterTest {

    @Test
    public void testIncorrectValidationReport() throws IOException, SAXException {
        InputStream inputStream = getClass().getClassLoader().getResourceAsStream("org/schematron/filter/oioubl-validationreport-error.xml");
        SchematronResultTransformer validationFilter = new OIOUBLSchematronResultTransformer();
        SchematronResult schematronResult = validationFilter.transform(new InputSource(inputStream));

        Assert.assertFalse(!schematronResult.getFatals().isEmpty());
        Assert.assertEquals("[F-INV001] Root element must be Invoice, failed when performing test [local-name(*) = 'Invoice'] in context [/].\n", schematronResult.toString());
    }

    @Test
    public void testCorrectValidationReport() throws IOException, SAXException {
        InputStream inputStream = getClass().getClassLoader().getResourceAsStream("org/schematron/filter/oioubl-validationreport-ok.xml");
        SchematronResultTransformer validationFilter = new OIOUBLSchematronResultTransformer();
        SchematronResult schematronResult = validationFilter.transform(new InputSource(inputStream));

        Assert.assertTrue(schematronResult.getErrors().isEmpty() && schematronResult.getFatals().isEmpty());
    }
}
