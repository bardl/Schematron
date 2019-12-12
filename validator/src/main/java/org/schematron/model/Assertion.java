package org.schematron.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Assertion {
    private String description;
    private String name;
    private String test;
    private String location;

    public Assertion() {}

    public Assertion(String name, String description, String test, String location) {
        this.name = name;
        this.description = description;
        this.test = test;
        this.location = location;
    }

    @XmlElement
    public String getDescription() {
        return description;
    }

    @XmlElement
    public String getName() {
        return name;
    }

    @XmlElement
    public String getTest() {
        return test;
    }

    @XmlElement
    public String getLocation() {
        return location;
    }
}
