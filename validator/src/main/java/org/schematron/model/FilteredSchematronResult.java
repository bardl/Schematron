package org.schematron.model;

import java.util.List;

/**
 * Keep filtered schematraon result from here
 */
public class FilteredSchematronResult implements SchematronResult {

    private List<Assertion> warnings;
    private List<Assertion> errors;
    private List<Assertion> fatals;

    public FilteredSchematronResult(List<Assertion> warnings, List<Assertion> errors, List<Assertion> fatals) {
        this.warnings = warnings;
        this.errors = errors;
        this.fatals = fatals;
    }

    @Override
    public List<Assertion> getWarnings() {
        return this.warnings;
    }

    @Override
    public List<Assertion> getErrors() {
        return this.errors;
    }

    @Override
    public List<Assertion> getFatals() {
        return this.fatals;
    }

}
