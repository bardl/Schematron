package se.pagero.schematron.loader;

import org.apache.log4j.Logger;
import org.w3c.dom.ls.LSInput;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.*;
import org.xml.sax.helpers.XMLReaderFactory;
import se.pagero.schematron.commons.XsltVersion;
import se.pagero.schematron.filter.InclusionFilter;

import javax.xml.transform.*;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.*;

/**
 * Created by IntelliJ IDEA.
 * User: bardl
 * Date: 2012-feb-11
 * Time: 09:38:56
 * To change this template use File | Settings | File Templates.
 */
public class SchematronLoader {

    static Logger logger = Logger.getLogger(SchematronLoader.class);

    public Transformer loadSchema(InputSource source, XsltVersion xsltVersion, final LSResourceResolver resolver) throws SAXException, IOException, TransformerException {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        byte[] interim = null;

        logger.debug("Performing inclusion ...");
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
        filter.setContentHandler(new com.sun.xml.internal.bind.marshaller.XMLWriter(writer, writer.getEncoding()));
        filter.parse(source);
        interim = baos.toByteArray();
        baos.reset();

        logger.debug("Running abstract template expansion transform ...");
        interim = performTransformation(xsltVersion, baos, interim, xsltVersion.getAbstractExpand());
        baos.reset();

        logger.debug("Transforming schema to XSLT ...");
        interim = performTransformation(xsltVersion, baos, interim, xsltVersion.getSvrlForXslt());
        baos.reset();

        logger.debug("Creating Transformer ...");
        Source xsltSource = new StreamSource(new ByteArrayInputStream(interim));
        return createTransformer(xsltVersion, xsltSource);
    }

    private byte[] performTransformation(final XsltVersion xsltVersion, ByteArrayOutputStream baos, byte[] interim, String xsltResource) throws TransformerException {
        InputStream inputStream = loadResource(xsltResource, xsltVersion);
        Source xsltSource = new StreamSource(inputStream);
        Transformer transformer = createTransformer(xsltVersion, xsltSource);
        transformer.transform(new StreamSource(new ByteArrayInputStream(interim)), new StreamResult(baos));
        interim = baos.toByteArray();
        return interim;
    }

    private Transformer createTransformer(final XsltVersion xsltVersion, Source xsltSource) throws TransformerConfigurationException {
        TransformerFactory factory = TransformerFactory.newInstance();
        factory.setURIResolver(new URIResolver() {
            public Source resolve(String href, String base) throws TransformerException {
                InputStream inputStream = getClass().getClassLoader().getResourceAsStream(xsltVersion.getResourcePath() + "/" + href);
                return new StreamSource(inputStream);
            }
        });
        Transformer transformer = factory.newTransformer(xsltSource);
        return transformer;
    }

    public InputStream loadResource(String xsltResource, XsltVersion version) {
        return getClass().getClassLoader().getResourceAsStream(version.getResourcePath() + "/" + xsltResource);
    }


}
