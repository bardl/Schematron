package org.schematron.validation;

import junit.framework.Assert;
import org.junit.Test;

import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import java.io.InputStream;

/**
 * SchematronSchemaFactoryTest tests that SchematronSchemaFactory behaves correct.
 * @author bard.langoy
 */
public class SchematronValidatorFactoryTest {

  @Test
  public void aCorrectSchematronConfigShouldCreateASchematronValidator() {
    InputStream inputStream = getClass().getClassLoader().getResourceAsStream("ehf/schematron/NORWAY-UBL-T10.xsl");
    Source source = new StreamSource(inputStream);

    SchematronValidatorFactory factory = new SchematronValidatorFactory();
    SchematronValidator validator = factory.newSchematronValidator(source);
    Assert.assertNotNull(validator);
  }
}
