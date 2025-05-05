package org.schematron.model;

import org.schematron.exception.SchematronException;

import jakarta.xml.bind.JAXBContext;
import jakarta.xml.bind.JAXBException;
import jakarta.xml.bind.annotation.XmlElement;
import jakarta.xml.bind.annotation.XmlElementWrapper;
import jakarta.xml.bind.annotation.XmlRootElement;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;

@XmlRootElement(name = "schematronResult")
public class SchematronResultImpl implements SchematronResult {
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

    public String toXml() {
        try {
            StringWriter stringWriter = new StringWriter();
            JAXBContext context = JAXBContext.newInstance(SchematronResultImpl.class);
            context.createMarshaller().marshal(this, stringWriter);
            return stringWriter.toString();
        } catch (JAXBException e) {
           throw new SchematronException("Unable to write SchematronResult as xml.", e);
        }
    }
}
