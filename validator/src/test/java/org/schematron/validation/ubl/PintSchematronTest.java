package org.schematron.validation.ubl;

import org.junit.BeforeClass;
import org.junit.Test;
import org.schematron.validation.BaseSchematronTest;
import org.xml.sax.SAXException;

import java.io.IOException;

/**
 * EHFSchematronTest tests that a selection of EHF files gets expected result after validation.
 * @author bard.langoy
 */
public class PintSchematronTest extends BaseSchematronTest {

    private final static String SCHEMATRON_PATH = "ehf/schematron/pint/";
    private final String testfilePath = "ehf/testfiles/pint/";

    @BeforeClass
    public static void setupEHFValidator() throws SAXException {
        setupValidator(SCHEMATRON_PATH, "PEPPOL-EN16931-UBL.xsl", null);
    }

    @Test
    public void incorrectEHFAccordingToRequirement_1() throws IOException {
        testIncorrectFile(testfilePath + "invalid-invoice.xml", "PEPPOL-EN16931-R004", "PEPPOL-EN16931-R007");
    }

}
