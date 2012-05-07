package se.pagero.schematron.validation.ehf;

import com.sun.org.apache.xerces.internal.dom.DOMInputImpl;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.w3c.dom.ls.LSInput;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.SAXException;
import se.pagero.schematron.validation.SchematronErrorHandler;
import se.pagero.schematron.validation.SchematronSchemaFactory;

import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;
import java.io.IOException;
import java.io.InputStream;

/**
 * EHFSchematronTest tests that a selection of EHF files gets expected result after validation.
 * @author bard.langoy
 */
public class EHFSchematronTest {

    private final String testfilePath = "ehf/testfiles/";
    private static Validator validator;

    @BeforeClass
    public static void setupEHFValidator() throws SAXException {
        final String schematronPath = "ehf/schematron/";

        SchematronErrorHandler errorHandler = new SchematronErrorHandler();

        SchemaFactory factory = new SchematronSchemaFactory();
        factory.setErrorHandler(errorHandler);
        factory.setResourceResolver(new LSResourceResolver() {

            public LSInput resolveResource(String type, String namespaceURI, String publicId, String systemId, String baseURI) {
                InputStream inputStream = getClass().getClassLoader().getResourceAsStream(schematronPath + systemId);
                return new DOMInputImpl(publicId, systemId, baseURI, inputStream, "utf-8");
            }
        });

        InputStream mainSchema = EHFSchematronTest.class.getClassLoader().getResourceAsStream(schematronPath + "NORWAY-UBL-T10.sch");
        validator = factory.newSchema(new StreamSource(mainSchema)).newValidator();        
    }

    @Test
    public void correctFile() throws IOException, SAXException {
        InputStream mainSchema = getClass().getClassLoader().getResourceAsStream(testfilePath + "BII05 T10 0 gyldig faktura med vanlige dataelementer.xml");
        validator.validate(new StreamSource(mainSchema));        
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



    private void testIncorrectFile(String testfile, String... errorCodes) throws IOException {
        try {
            InputStream mainSchema = getClass().getClassLoader().getResourceAsStream(testfile);
            validator.validate(new StreamSource(mainSchema));
            Assert.fail("Validator should fail for invalid test file [" + testfile + "].");
        } catch (SAXException e) {
            for (String errorCode : errorCodes) {
                assertErrorCodeExistsInException(e, errorCode);
            }
        }
    }

    private void assertErrorCodeExistsInException(SAXException e, String errorCode) {
        Assert.assertTrue("File did not get expected error [" + errorCode + "] in errormessage [" + e.getMessage() + "]", e.getMessage().contains(errorCode));
    }
}
