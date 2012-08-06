package org.schematron.filter;

import org.apache.log4j.Logger;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.XMLFilterImpl;
import org.xml.sax.helpers.XMLReaderFactory;
import org.schematron.commons.Constants;

import java.net.URL;

/**
 * InclusionFilter reads through schematron files loading and inserting referenced schematron files found in
 * include element. This filter is called by {@link org.schematron.loader.SchematronLoader}.
 * @author bard.langoy
 */
public class InclusionFilter extends XMLFilterImpl {

    static Logger logger = Logger.getLogger(InclusionFilter.class);
    private boolean outermost;
    private URL base;

    public InclusionFilter(URL base, boolean outermost) {
        this.base = base;
        this.outermost = outermost;
    }

    @Override
    public void startDocument() throws SAXException {
        // only emit XML declaration for outermost document
        if (this.outermost) {
            super.startDocument();
        }
    }


    @Override
    public void endElement(String uri, String localName, String name) throws SAXException {
        boolean isIncludeElement = localName.equals("include")
                && uri.equals(Constants.SCHEMATRON_NAME);

        if (!isIncludeElement) {
            super.endElement(uri, localName, name);
        }
    }


    @Override
    public void startElement(String uri, String localName, String name, Attributes atts) throws SAXException {
        boolean isIncludeElement = localName.equals("include") && uri.equals(Constants.SCHEMATRON_NAME);

        if (isIncludeElement) {
            try {
                String href = atts.getValue("href");
                logger.debug("Expanding inclusion at: " + href);
                InclusionFilter filter = new InclusionFilter(this.base, false);
                filter.setParent(XMLReaderFactory.createXMLReader());
                filter.setContentHandler(this.getContentHandler());
                InputSource source = getEntityResolver().resolveEntity(localName, href);
                filter.parse(source);                
            }
            catch (Exception e) {
                throw new SAXException("Unexpected error occured when running inclusion on schematron files.", e);
            }

        } else {
            super.startElement(uri, localName, name, atts);
        }

    }

}
