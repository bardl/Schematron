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
    public void correctFile() throws IOException {
        testIncorrectFile(testfilePath + "BII04 T10 gyldig faktura med alle elementer.xml", "BIIRULE-T10-R018", "PCL-010-008");
    }

    @Test
    public void correctIncorrectFile() throws IOException {
        testIncorrectFile(testfilePath + "BII05 T10 0 gyldig faktura med vanlige dataelementer.xml", "BIICORE-T10-R000", "EUGEN-T10-R024");
    }

    //@Test //Test
    public void correctIncorrectFileEmptyElements() throws IOException {
        testIncorrectFile(testfilePath + "BII05 T10 0 gyldig faktura med vanlige dataelementer.xml", "EUGEN-T10-R024");
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
