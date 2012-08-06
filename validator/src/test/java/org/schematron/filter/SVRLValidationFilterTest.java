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

public class SVRLValidationFilterTest {

    @Test
    public void testIncorrectValidationReport() throws IOException, SAXException {
        InputStream inputStream = getClass().getClassLoader().getResourceAsStream("org/schematron/filter/svrl-validationreport-error.xml");
        SVRLValidationFilter validationFilter = createAndInitiateValidationFilter();
        validationFilter.parse(new InputSource(inputStream));

        Assert.assertFalse(validationFilter.isValid());
        Assert.assertEquals("[BIICORE-T10-R000]-This XML instance is NOT a core BiiTrdm010 transaction Failed when performing test [contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm010:ver1.0')].\n" +
                "[BIICORE-T10-R001]-An invoice SHOULD not contain empty elements. Failed when performing test [not(count(//*[not(text())]) > 0)].\n" +
                "[EUGEN-T10-R024]-Currency Identifier MUST be in stated in the currency stated on header level. Failed when performing test [not(//@currencyID != //cbc:DocumentCurrencyCode)].\n" +
                "[NONAT-T10-R001]-The Norwegian legal registration ID for the supplier MUST be provided according to \"FOR 2004-12-01 nr 1558 5-1-1. Point 2\" Failed when performing test [(cac:PartyLegalEntity/cbc:CompanyID != '') and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))].\n", validationFilter.getErrorReport());
    }

    @Test
    public void testCorrectValidationReport() throws IOException, SAXException {
        InputStream inputStream = getClass().getClassLoader().getResourceAsStream("org/schematron/filter/svrl-validationreport-ok.xml");
        SVRLValidationFilter validationFilter = createAndInitiateValidationFilter();
        validationFilter.parse(new InputSource(inputStream));

        Assert.assertTrue(validationFilter.isValid());
    }

    private SVRLValidationFilter createAndInitiateValidationFilter() throws SAXException {
        SVRLValidationFilter validationFilter = new SVRLValidationFilter();
        validationFilter.setParent(XMLReaderFactory.createXMLReader());
        validationFilter.setContentHandler(new XMLWriter(new OutputStreamWriter(new ByteArrayOutputStream())));
        validationFilter.setErrorHandler(new SchematronErrorHandler());
        return validationFilter;
    }
}
