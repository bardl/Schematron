package org.schematron.validation.pt;

import org.junit.Test;
import org.schematron.filter.SVRLSchematronResultTransformer;
import org.schematron.validation.BaseSchematronTest;
import org.schematron.validation.SchematronErrorHandler;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;

import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Validator;
import java.io.IOException;
import java.io.InputStream;

import static org.junit.Assert.*;

public class PTSchematronTest extends BaseSchematronTest {

    @Test
    public void shouldNotFailForValidDocument() throws IOException, SAXException {
        Validator validator = setupValidator("pt/", "urn_feap.gov.pt_CIUS-PT_2.0.0.xsl", new SVRLSchematronResultTransformer());
        InputStream mainSchema = getClass().getClassLoader().getResourceAsStream("pt/CIUS-PT_correct.xml");
        validator.validate(new StreamSource(mainSchema));
        SchematronErrorHandler errorHandler = (SchematronErrorHandler)validator.getErrorHandler();
        assertTrue(errorHandler.getErrorReport().isEmpty());
    }

    @Test
    public void shouldDetectReportErrors() throws IOException, SAXException {
        Validator validator = setupValidator("pt/", "urn_feap.gov.pt_CIUS-PT_2.0.0.xsl", new SVRLSchematronResultTransformer());
        InputStream mainSchema = getClass().getClassLoader().getResourceAsStream("pt/CIUS-PT_Incorrect.xml");
        try {
            validator.validate(new StreamSource(mainSchema));
            fail("The validation should fail");
        } catch (Exception e) {
            SchematronErrorHandler errorHandler = (SchematronErrorHandler)validator.getErrorHandler();
            assertEquals(errorHandler.getErrorReport(), "Fatal: [DT-CIUS-PT-009]-The BT-10 does not meet the defined format: alphanumeric with size between 1 and 50. Fatal error when performing test [matches(.,'^(.1 50)$')]., at line [-1], column [-1].\n" +
                    "Fatal: [DT-CIUS-PT-016]-The BT-17 does not meet the defined format: alphanumeric with size between 1 and 20. Fatal error when performing test [matches(.,'^(.1 20)$')]., at line [-1], column [-1].\n" +
                    "Fatal: [DT-CIUS-PT-020_6.4]-The BT-22 when prefixed with '#NUMBER@ATCERTIFIEDPROGRAM#', can only exist once. Fatal error when performing test [starts-with(normalize-space(.),'#NUMBER@ATCERTIFIEDPROGRAM#') and $cnt20_6 > 1]., at line [-1], column [-1].\n" +
                    "Fatal: [DT-CIUS-PT-020_6.4]-The BT-22 when prefixed with '#NUMBER@ATCERTIFIEDPROGRAM#', can only exist once. Fatal error when performing test [starts-with(normalize-space(.),'#NUMBER@ATCERTIFIEDPROGRAM#') and $cnt20_6 > 1]., at line [-1], column [-1].\n");
        }
    }

}
