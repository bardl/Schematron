package org.schematron.exception;

/**
 * SchematronException is thrown by Schematron when error occurs.
 * @author bard.langoy
 */
public class SchematronException extends RuntimeException {

    public SchematronException(String s) {
        super(s);
    }

    public SchematronException(String s, Throwable throwable) {
        super(s, throwable);
    }
}
