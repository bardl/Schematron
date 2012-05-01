package se.pagero.schematron.loader;

import org.apache.log4j.Logger;
import org.w3c.dom.ls.LSInput;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.*;
import org.xml.sax.helpers.XMLReaderFactory;
import se.pagero.schematron.commons.XMLWriter;
import se.pagero.schematron.commons.XsltVersion;
import se.pagero.schematron.filter.InclusionFilter;

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

    public Transformer loadSchema(InputSource source, XsltVersion xsltVersion, final LSResourceResolver resolver) throws SAXException, IOException, TransformerException {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();

        logger.debug("Performing inclusion ...");
        byte[] data = performInclusionOfSchematron(source, resolver, baos);
        baos.reset();

        logger.debug("Running abstract template expansion transform ...");
        data = performTransformation(xsltVersion, baos, data, xsltVersion.getAbstractExpand());
        baos.reset();

        logger.debug("Transforming schema to XSLT ...");
        data = performTransformation(xsltVersion, baos, data, xsltVersion.getSvrlForXslt());
        baos.reset();

        logger.debug("Creating Transformer ...");
        Source xsltSource = new StreamSource(new ByteArrayInputStream(data));
        return createTransformer(xsltVersion, xsltSource);
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
        InputStream inputStream = loadResource(xsltResource, xsltVersion);
        Source xsltSource = new StreamSource(inputStream);
        Transformer transformer = createTransformer(xsltVersion, xsltSource);
        transformer.transform(new StreamSource(new ByteArrayInputStream(data)), new StreamResult(baos));
        data = baos.toByteArray();
        return data;
    }

    private Transformer createTransformer(final XsltVersion xsltVersion, Source xsltSource) throws TransformerConfigurationException {
        TransformerFactory factory = TransformerFactory.newInstance();
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
