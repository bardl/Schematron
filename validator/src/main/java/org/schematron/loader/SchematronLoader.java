package org.schematron.loader;

import org.apache.log4j.Logger;
import org.w3c.dom.ls.LSInput;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;
import org.schematron.commons.XMLWriter;
import org.schematron.commons.XsltVersion;
import org.schematron.filter.InclusionFilter;

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

    static Logger logger = Logger.getLogger(SchematronLoader.class);

    private static final String PROPERTY_TRAX_IMPLEMENTATION = "javax.xml.transform.TransformerFactory";
    private static final String SAXON_TRAX_CLASS = "net.sf.saxon.TransformerFactoryImpl";

    public Transformer loadSchema(InputSource source, XsltVersion xsltVersion, final LSResourceResolver resolver, boolean compileSchematron) throws SAXException, IOException, TransformerException {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();

        byte[] data;
        if (compileSchematron) {
            data = compileSchematron(source, xsltVersion, resolver);
        } else {
            data = new byte[source.getByteStream().available()];
            source.getByteStream().read(data);
        }
        logger.debug("Creating Transformer ...");
        Source xsltSource = new StreamSource(new ByteArrayInputStream(data));
        return createTransformer(xsltVersion, xsltSource);
    }

    public byte[] compileSchematron(InputSource source, XsltVersion xsltVersion, LSResourceResolver resolver) throws SAXException, IOException, TransformerException {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        
        byte[] data;
        logger.debug("Performing inclusion ...");
        data = performInclusionOfSchematron(source, resolver, baos);
        baos.reset();

        logger.debug("Running abstract template expansion transform ...");
        data = performTransformation(xsltVersion, baos, data, xsltVersion.getAbstractExpand());
        baos.reset();

        logger.debug("Transforming schema to XSLT ...");
        data = performTransformation(xsltVersion, baos, data, xsltVersion.getSvrlForXslt());
        baos.reset();
        return data;
    }

    private byte[] performInclusionOfSchematron(InputSource source, final LSResourceResolver resolver, ByteArrayOutputStream baos) throws SAXException, IOException {
        XMLReader reader = XMLReaderFactory.createXMLReader();
        InclusionFilter filter = new InclusionFilter(null, true);
        filter.setEntityResolver(new EntityResolver() {
            public InputSource resolveEntity(String publicId, String systemId) throws SAXException, IOException {
                LSInput input = resolver.resolveResource("Schematron", null, publicId, systemId, "");
                return new InputSource(input.getByteStream());
            }
        });
        filter.setParent(reader);
        OutputStreamWriter writer = new OutputStreamWriter(baos);
        filter.setContentHandler(new XMLWriter(writer));
        filter.parse(source);
        return baos.toByteArray();
    }

    private byte[] performTransformation(final XsltVersion xsltVersion, ByteArrayOutputStream baos, byte[] data, String xsltResource) throws TransformerException {
        InputStream inputStream = null;
        try {
            inputStream = loadResource(xsltResource, xsltVersion);
            Source xsltSource = new StreamSource(inputStream);
            Transformer transformer = createTransformer(xsltVersion, xsltSource);
            transformer.transform(new StreamSource(new ByteArrayInputStream(data)), new StreamResult(baos));
            return baos.toByteArray();
        } finally {
            try {
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (IOException e) {
                throw new TransformerException("Error occured when closing schematron resource [" + xsltResource + "].", e);
            }
        }
    }

    private Transformer createTransformer(final XsltVersion xsltVersion, Source xsltSource) throws TransformerConfigurationException {
//        System.setProperty( PROPERTY_TRAX_IMPLEMENTATION, SAXON_TRAX_CLASS );
        TransformerFactory factory = TransformerFactory.newInstance(SAXON_TRAX_CLASS, null);
        factory.setURIResolver(new URIResolver() {
            public Source resolve(String href, String base) throws TransformerException {
                InputStream inputStream = getClass().getClassLoader().getResourceAsStream(xsltVersion.getResourcePath() + "/" + href);
                return new StreamSource(inputStream);
            }
        });
        return factory.newTransformer(xsltSource);
    }

    private InputStream loadResource(String xsltResource, XsltVersion version) {
        return getClass().getClassLoader().getResourceAsStream(version.getResourcePath() + "/" + xsltResource);
    }
}
