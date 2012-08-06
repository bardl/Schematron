package org.schematron;

import org.w3c.dom.ls.LSInput;
import org.w3c.dom.ls.LSResourceResolver;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

public class ResourceResolver implements LSResourceResolver {
    private String schematronPath;

    public ResourceResolver(String schematronPath) {
        this.schematronPath = schematronPath;
    }

    public LSInput resolveResource(final String type, final String namespaceURI, final String publicId, final String systemId, final String baseURI) {
        try {
            InputStream inputStream = new FileInputStream(schematronPath + systemId);
            final String encoding = "utf-8";
            return new StreamResourceResolver(inputStream, encoding);
        } catch (FileNotFoundException e) {
            throw new RuntimeException("Unable to resolve resource [" + systemId + "] with schematronPath [" + schematronPath + "]", e);
        }

    }
}
