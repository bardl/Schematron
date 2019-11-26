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
        Assert.assertEquals("[F-INV001] Root element must be Invoice Error when performing test [local-name(*) = 'Invoice'].\n", schematronResult.toString());
    }

    @Test
    public void testValidationReportWith3Errors() throws IOException, SAXException {
        InputStream inputStream = getClass().getClassLoader().getResourceAsStream("org/schematron/filter/oioubl-validationreport-3-errors.xml");
        SchematronResultTransformer validationFilter = new OIOUBLSchematronResultTransformer();
        SchematronResult schematronResult = validationFilter.transform(new InputSource(inputStream));

        Assert.assertFalse(!schematronResult.getFatals().isEmpty());
        Assert.assertEquals("[F-LIB195] Invalid schemeID. Must be a valid scheme for\n" +
                "            PartyTaxScheme/CompanyID Error when performing test [cbc:CompanyID/@schemeID = 'DK:SE' or cbc:CompanyID/@schemeID = 'ZZZ'].\n" +
                "[F-LIB189] Invalid schemeID. Must be a valid scheme for\n" +
                "            PartyLegalEntity/CompanyID Error when performing test [cbc:CompanyID/@schemeID = 'DK:CVR' or cbc:CompanyID/@schemeID = 'DK:CPR' or\n" +
                "            cbc:CompanyID/@schemeID = 'ZZZ'].\n" +
                "[F-LIB195] Invalid schemeID. Must be a valid scheme for\n" +
                "            PartyTaxScheme/CompanyID Error when performing test [cbc:CompanyID/@schemeID = 'DK:SE' or cbc:CompanyID/@schemeID = 'ZZZ'].\n", schematronResult.toString());
    }

    @Test
    public void testCorrectValidationReport() throws IOException, SAXException {
        InputStream inputStream = getClass().getClassLoader().getResourceAsStream("org/schematron/filter/oioubl-validationreport-ok.xml");
        SchematronResultTransformer validationFilter = new OIOUBLSchematronResultTransformer();
        SchematronResult schematronResult = validationFilter.transform(new InputSource(inputStream));

        Assert.assertTrue(schematronResult.getErrors().isEmpty() && schematronResult.getFatals().isEmpty());
    }
}
