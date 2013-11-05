package org.schematron.filter;

/**
 * ValidationLevel contains the severity level of assertion failure when validating a schematrom rule.
 * @author bard.langoy
 */
public enum ValidationLevel {
    WARN("Warning"),
    ERROR("Error"),
    FATAL("Fatal error");

    private String displayString;

    ValidationLevel(String displayString) {
        this.displayString = displayString;
    }

    public String getDisplayString() {
        return displayString;
    }
}
