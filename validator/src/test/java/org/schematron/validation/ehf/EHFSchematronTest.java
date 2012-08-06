package org.schematron.validation.ehf;

import org.junit.BeforeClass;
import org.junit.Test;
import org.xml.sax.SAXException;
import org.schematron.validation.BaseSchematronTest;

import javax.xml.transform.stream.StreamSource;
import java.io.IOException;
import java.io.InputStream;

/**
 * EHFSchematronTest tests that a selection of EHF files gets expected result after validation.
 * @author bard.langoy
 */
public class EHFSchematronTest extends BaseSchematronTest {

    private final static String SCHEMATRON_PATH = "ehf/schematron/";
    private final String testfilePath = "ehf/testfiles/";

    @BeforeClass
    public static void setupEHFValidator() throws SAXException {
        setupValidator(SCHEMATRON_PATH, false, "NORWAY-UBL-T10.xsl");
    }

    @Test
    public void correctFile() throws IOException, SAXException {
        InputStream mainSchema = getClass().getClassLoader().getResourceAsStream(testfilePath + "BII05 T10 0 gyldig faktura med vanlige dataelementer.xml");
        getValidator().validate(new StreamSource(mainSchema));
    }
    
    @Test
    public void incorrectEHFAccordingToRequirement_1() throws IOException {
        testIncorrectFile(testfilePath + "BII05 T10 1 feil ehandel.no format faktura.xml", "EUGEN-T10-R024", "NONAT-T10-R001");
    }

    @Test
    public void incorrectEHFAccordingToRequirement_1_1() throws IOException {
        testIncorrectFile(testfilePath + "BII05 T10 1.1 feil ehandel.no format faktura.xml", "EUGEN-T10-R024", "NONAT-T10-R001");
    }

    @Test
    public void incorrectEHFAccordingToRequirement_10() throws IOException {
        testIncorrectFile(testfilePath + "BII05 T10 10 feil ehandel.no format faktura.xml", "EUGEN-T10-R024", "NOGOV-T10-R007");
    }

    @Test
    public void incorrectEHFAccordingToRequirement_10_1() throws IOException {
        testIncorrectFile(testfilePath + "BII05 T10 10.1 feil ehandel.no format faktura.xml", "EUGEN-T10-R024", "NOGOV-T10-R007");
    }

    @Test
    public void incorrectEHFAccordingToRequirement_11() throws IOException {
        testIncorrectFile(testfilePath + "BII05 T10 11 feil ehandel.no format faktura.xml", "EUGEN-T10-R024");
    }

    @Test
    public void incorrectEHFAccordingToRequirement_12() throws IOException {
        testIncorrectFile(testfilePath + "BII05 T10 12 feil ehandel.no format faktura.xml", "EUGEN-T10-R024", "NOGOV-T10-R009");
    }

    @Test
    public void incorrectEHFAccordingToRequirement_2() throws IOException {
        testIncorrectFile(testfilePath + "BII05 T10 2 feil ehandel.no format faktura.xml", "EUGEN-T10-R024", "NONAT-T10-R002");
    }
    @Test
    public void incorrectEHFAccordingToRequirement_3() throws IOException {
        testIncorrectFile(testfilePath + "BII05 T10 3 feil ehandel.no format faktura.xml", "EUGEN-T10-R024", "NONAT-T10-R003");
    }
    @Test
    public void incorrectEHFAccordingToRequirement_4() throws IOException {
        testIncorrectFile(testfilePath + "BII05 T10 4 feil ehandel.no format faktura.xml", "EUGEN-T10-R024", "NONAT-T10-R004");
    }
    @Test
    public void incorrectEHFAccordingToRequirement_5() throws IOException {
        testIncorrectFile(testfilePath + "BII05 T10 5 feil ehandel.no format faktura.xml", "EUGEN-T10-R024", "NONAT-T10-R005");
    }
    @Test
    public void incorrectEHFAccordingToRequirement_7() throws IOException {
        testIncorrectFile(testfilePath + "BII05 T10 7 feil ehandel.no format faktura.xml", "EUGEN-T10-R024", "NOGOV-T10-R014");
    }
    @Test
    public void incorrectEHFAccordingToRequirement_8() throws IOException {
        testIncorrectFile(testfilePath + "BII05 T10 8 feil ehandel.no format faktura.xml", "EUGEN-T10-R024", "NONAT-T10-R007");
    }
}
