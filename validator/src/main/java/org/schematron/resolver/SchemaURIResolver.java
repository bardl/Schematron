package org.schematron.resolver;

import org.w3c.dom.ls.LSInput;
import org.w3c.dom.ls.LSResourceResolver;

import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;
import javax.xml.transform.stream.StreamSource;

public class SchemaURIResolver implements URIResolver {
    LSResourceResolver resourceResolver;

    public SchemaURIResolver(LSResourceResolver resourceResolver) {
        this.resourceResolver = resourceResolver;
    }

    public Source resolve(String href, String base) throws TransformerException {
        LSInput input = resourceResolver.resolveResource(null, null, null, href, base);
        return new StreamSource(input.getByteStream());
    }
}
