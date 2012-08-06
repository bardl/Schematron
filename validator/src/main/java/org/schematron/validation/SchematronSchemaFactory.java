package org.schematron.validation;

import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.schematron.commons.Constants;

import javax.xml.transform.Source;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;

/**
 * SchematronSchemaFactory is a factory that creates {@link org.schematron.validation.SchematronSchema} objects.
 * @author bard.langoy
 */
public class SchematronSchemaFactory extends SchemaFactory {

    private ErrorHandler errorHandler;
    private LSResourceResolver resourceResolver;
    private boolean compileSchematron = true;

    @Override
    public boolean isSchemaLanguageSupported(String schemaLanguage) {
        return Constants.SCHEMA_LANGUAGE_URL.equalsIgnoreCase(schemaLanguage) || Constants.SCHEMATRON_NAME.equalsIgnoreCase(schemaLanguage);
    }

    @Override
    public void setErrorHandler(ErrorHandler errorHandler) {
        this.errorHandler = errorHandler;
    }

    @Override
    public ErrorHandler getErrorHandler() {
        return errorHandler;
    }

    @Override
    public void setResourceResolver(LSResourceResolver resourceResolver) {
        this.resourceResolver = resourceResolver;
    }

    @Override
    public LSResourceResolver getResourceResolver() {
        return resourceResolver;
    }

    @Override
    public Schema newSchema(Source schema) throws SAXException {
        return new SchematronSchema(schema, resourceResolver, errorHandler, compileSchematron);
    }

    @Override
    public Schema newSchema(Source[] schemas) throws SAXException {
        return new SchematronSchema(schemas, resourceResolver, errorHandler, compileSchematron);
    }

    @Override
    public Schema newSchema() throws SAXException {
        throw new SAXException("Not implemented support for SchematronSchemaFactory.newSchema(void) method.");
    }

    public boolean isCompileSchematron() {
        return compileSchematron;
    }

    public void setCompileSchematron(boolean compileSchematron) {
        this.compileSchematron = compileSchematron;
    }
}
