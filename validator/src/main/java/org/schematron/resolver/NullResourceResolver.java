package org.schematron.resolver;

import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;

public class NullResourceResolver implements URIResolver {

    public Source resolve(String href, String base) throws TransformerException {
        return null;
    }
}
