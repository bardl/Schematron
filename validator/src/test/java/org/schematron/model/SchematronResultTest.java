package org.schematron.model;

import junit.framework.Assert;
import org.junit.Test;

public class SchematronResultTest {

    @Test
    public void allValuesFromSchematronResultShouldBeWrittenToXml() {
        SchematronResultImpl result = new SchematronResultImpl();
        result.getWarnings().add(new Assertion("name1", "description1", "test1", "location1"));
        result.getErrors().add(new Assertion("name2", "description2", "test2", "location2"));
        result.getErrors().add(new Assertion("name3", "description3", "test3", "location3"));
        result.getFatals().add(new Assertion("name4", "description4", "test4", "location4"));
        String actualXml = result.toXml();
        Assert.assertEquals("SchematronResult does not produce expected xml.", actualXml, "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><schematronResult><errors><error><description>description2</description><location>location2</location><name>name2</name><test>test2</test></error><error><description>description3</description><location>location3</location><name>name3</name><test>test3</test></error></errors><fatals><fatal><description>description4</description><location>location4</location><name>name4</name><test>test4</test></fatal></fatals><warnings><warning><description>description1</description><location>location1</location><name>name1</name><test>test1</test></warning></warnings></schematronResult>");
    }

    @Test
    public void allDescriptionsFromSchematronResultShouldBeWrittenToString() {
        SchematronResultImpl result = new SchematronResultImpl();
        result.getWarnings().add(new Assertion("name1", "description1", "test1", "location1"));
        result.getErrors().add(new Assertion("name2", "description2", "test2", "location2"));
        result.getErrors().add(new Assertion("name3", "description3", "test3", "location3"));
        result.getFatals().add(new Assertion("name4", "description4", "test4", "location4"));
        String actualString = result.toString();
        Assert.assertEquals("SchematronResult does not produce expected string.", actualString, "description1\ndescription2\ndescription3\ndescription4\n");
    }
}
