package org.schematron.validation;

import org.junit.Assert;
import org.w3c.dom.ls.LSInput;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.SAXException;

import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Validator;
import java.io.IOException;
import java.io.InputStream;

public class BaseSchematronTest {

    private static Validator validator;

    public static void setupValidator(final String schematronPath, boolean compileSchematron, String mainSchemaName) throws SAXException {

        SchematronErrorHandler errorHandler = new SchematronErrorHandler();

        SchematronSchemaFactory factory = new SchematronSchemaFactory();
        factory.setCompileSchematron(compileSchematron);
        factory.setErrorHandler(errorHandler);
        factory.setResourceResolver(new LSResourceResolver() {

            public LSInput resolveResource(final String type, final String namespaceURI, final String publicId, final String systemId, final String baseURI) {
                final InputStream inputStream = getClass().getClassLoader().getResourceAsStream(schematronPath + systemId);
                final String encoding = "utf-8";
                return new StreamResourceResolver(inputStream, encoding);
            }
        });

        InputStream mainSchema = BaseSchematronTest.class.getClassLoader().getResourceAsStream(schematronPath + mainSchemaName);
        validator = factory.newSchema(new StreamSource(mainSchema)).newValidator();
    }

    public void testIncorrectFile(String testfile, String... errorCodes) throws IOException {
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

    public void assertErrorCodeExistsInException(SAXException e, String errorCode) {
        Assert.assertTrue("File did not get expected error [" + errorCode + "] in errormessage [" + e.getMessage() + "]", e.getMessage().contains(errorCode));
    }

    public static Validator getValidator() {
        return validator;
    }
}
