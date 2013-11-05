package org.schematron.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Assertion {
    private String description;
    private String name;

    public Assertion() {}

    public Assertion(String name, String description) {
        this.name = name;
        this.description = description;
    }

    @XmlElement
    public String getDescription() {
        return description;
    }

    @XmlElement
    public String getName() {
        return name;
    }
}
