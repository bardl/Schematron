package org.schematron.model;

import org.schematron.exception.SchematronException;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;

@XmlRootElement
public class SchematronResult {
    private List<Assertion> warnings = new ArrayList<Assertion>();
    private List<Assertion> errors = new ArrayList<Assertion>();
    private List<Assertion> fatals = new ArrayList<Assertion>();

    @XmlElementWrapper
    @XmlElement(name="warning")
    public List<Assertion> getWarnings() {
        return warnings;
    }

    @XmlElementWrapper
    @XmlElement(name="error")
    public List<Assertion> getErrors() {
        return errors;
    }

    @XmlElementWrapper
    @XmlElement(name="fatal")
    public List<Assertion> getFatals() {
        return fatals;
    }

    public boolean isValid() {
        return errors.isEmpty() && fatals.isEmpty();
    }

    public String toXml() {
        try {
            StringWriter stringWriter = new StringWriter();
            JAXBContext context = JAXBContext.newInstance(SchematronResult.class);
            context.createMarshaller().marshal(this, stringWriter);
            return stringWriter.toString();
        } catch (JAXBException e) {
            throw new SchematronException("Unable to write SchematronResult as xml.", e);
        }
    }

    @Override
    public String toString() {
        StringBuilder result = new StringBuilder();
        writeAssertionsToResult(getWarnings(), result);
        writeAssertionsToResult(getErrors(), result);
        writeAssertionsToResult(getFatals(), result);
        return result.toString();
    }

    private void writeAssertionsToResult(List<Assertion> assertions, StringBuilder result) {
        for (Assertion assertion : assertions) {
            result.append(assertion.getDescription()).append("\n");
        }
    }
}
