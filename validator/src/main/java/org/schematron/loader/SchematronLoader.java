package org.schematron.loader;

import org.schematron.commons.XMLWriter;
import org.schematron.commons.XsltVersion;
import org.schematron.filter.InclusionFilter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.ls.LSInput;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;

import javax.xml.transform.*;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.*;

/**
 * SchematronLoader loads a schematron file importing all referenced schematron files and generates an xslt
 * transformation used when validating.
 * @author bard.langoy 
 */
public class SchematronLoader {

    static Logger logger = LoggerFactory.getLogger(SchematronLoader.class);

    private static final String SAXON_TRAX_CLASS = "net.sf.saxon.TransformerFactoryImpl";

    public Transformer loadSchema(InputSource source, XsltVersion xsltVersion, final URIResolver resolver) throws SAXException, IOException, TransformerException {
        logger.debug("Creating Transformer ...");

        Source xsltSource = new StreamSource(source.getByteStream());
        return createTransformer(xsltSource, resolver);
    }

    private Transformer createTransformer(Source xsltSource, URIResolver resolver) throws TransformerConfigurationException {
        TransformerFactory factory = TransformerFactory.newInstance(SAXON_TRAX_CLASS, null);
        factory.setURIResolver(resolver);
        return factory.newTransformer(xsltSource);
    }

}
