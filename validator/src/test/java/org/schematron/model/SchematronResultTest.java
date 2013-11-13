package org.schematron.model;

import junit.framework.Assert;
import org.junit.Test;

public class SchematronResultTest {

    @Test
    public void allValuesFromSchematronResultShouldBeWrittenToXml() {
        SchematronResultImpl result = new SchematronResultImpl();
        result.getWarnings().add(new Assertion("name1", "description1"));
        result.getErrors().add(new Assertion("name2", "description2"));
        result.getErrors().add(new Assertion("name3", "description3"));
        result.getFatals().add(new Assertion("name4", "description4"));
        String actualXml = result.toXml();
        Assert.assertEquals("SchematronResult does not produce expected xml.", actualXml, "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><schematronResult><errors><error><description>description2</description><name>name2</name></error><error><description>description3</description><name>name3</name></error></errors><fatals><fatal><description>description4</description><name>name4</name></fatal></fatals><warnings><warning><description>description1</description><name>name1</name></warning></warnings></schematronResult>");
    }

    @Test
    public void allDescriptionsFromSchematronResultShouldBeWrittenToString() {
        SchematronResultImpl result = new SchematronResultImpl();
        result.getWarnings().add(new Assertion("name1", "description1"));
        result.getErrors().add(new Assertion("name2", "description2"));
        result.getErrors().add(new Assertion("name3", "description3"));
        result.getFatals().add(new Assertion("name4", "description4"));
        String actualString = result.toString();
        Assert.assertEquals("SchematronResult does not produce expected string.", actualString, "description1\ndescription2\ndescription3\ndescription4\n");
    }
}
