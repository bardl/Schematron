package org.schematron.loader;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import javax.xml.transform.*;
import javax.xml.transform.stream.StreamSource;
import java.io.IOException;

/**
 * SchematronLoader loads a schematron file importing all referenced schematron files and generates an xslt
 * transformation used when validating.
 * @author bard.langoy 
 */
public class SchematronLoader {

    static Logger logger = LoggerFactory.getLogger(SchematronLoader.class);

    private static final String SAXON_TRAX_CLASS = "net.sf.saxon.TransformerFactoryImpl";

    public Transformer loadSchema(InputSource source, final URIResolver resolver) throws SAXException, IOException, TransformerException {
        logger.debug("Creating Transformer ...");

        Source xsltSource = new StreamSource(source.getByteStream());
        return createTransformer(xsltSource, resolver);
    }

    private Transformer createTransformer(Source xsltSource, URIResolver resolver) throws TransformerConfigurationException {
        TransformerFactory factory = TransformerFactory.newInstance(SAXON_TRAX_CLASS, null);
        factory.setErrorListener(new ErrorListener() {
            @Override
            public void warning(TransformerException exception) throws TransformerException {}

            @Override
            public void error(TransformerException exception) throws TransformerException {
                throw exception;
            }

            @Override
            public void fatalError(TransformerException exception) throws TransformerException {
                throw exception;
            }
        });
        factory.setURIResolver(resolver);
        return factory.newTransformer(xsltSource);
    }

}
