package org.schematron.validation.oioubl;

import org.junit.BeforeClass;
import org.junit.Test;
import org.schematron.filter.OIOUBLSchematronResultTransformer;
import org.schematron.validation.BaseSchematronTest;
import org.xml.sax.SAXException;

import javax.xml.transform.stream.StreamSource;
import java.io.IOException;
import java.io.InputStream;

/**
 * OIOUBLSchematronTest tests that a selection of OIOUBL files gets expected result after validation.
 * @author bard.langoy
 */
public class OIOUBLSchematronTest extends BaseSchematronTest {

    private final static String SCHEMATRON_PATH = "oioubl/schematron/";
    private final String testfilePath = "oioubl/testfiles/";

    @BeforeClass
    public static void setupOIOUBLValidator() throws SAXException {
        setupValidator(SCHEMATRON_PATH, "OIOUBL_Invoice_Schematron.xsl", new OIOUBLSchematronResultTransformer());
    }

    @Test
    public void correctFile() throws IOException, SAXException {
        InputStream mainSchema = getClass().getClassLoader().getResourceAsStream(testfilePath + "NES5.xml");
        getValidator().validate(new StreamSource(mainSchema));        
    }
    
    @Test
    public void incorrectEHFAccordingToRequirement_1() throws IOException, SAXException {
        testIncorrectFile(testfilePath + "InvalidAmounts.xml", "F-INV001");
    }

}
