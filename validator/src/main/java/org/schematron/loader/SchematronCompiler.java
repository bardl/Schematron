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

public class SchematronCompiler {

    static Logger logger = LoggerFactory.getLogger(SchematronCompiler.class);

    private static final String SAXON_TRAX_CLASS = "net.sf.saxon.TransformerFactoryImpl";

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
    private byte[] performTransformation(final XsltVersion xsltVersion, ByteArrayOutputStream baos, byte[] data, String xsltResource) throws IOException, TransformerException {
        InputStream inputStream = null;
        try {
            inputStream = loadResource(xsltResource, xsltVersion);
            Source xsltSource = new StreamSource(inputStream);
            Transformer transformer = createTransformer(xsltVersion, xsltSource);
            transformer.transform(new StreamSource(new ByteArrayInputStream(data)), new StreamResult(baos));
            return baos.toByteArray();
        } finally {
            if (inputStream != null) {
                inputStream.close();
            }
        }
    }

    private Transformer createTransformer(final XsltVersion xsltVersion, Source xsltSource) throws TransformerConfigurationException {
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
