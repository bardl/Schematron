/*
 * This file is part of the source of
 * 
 * Probatron4J - a Schematron validator for Java(tm)
 * 
 * Copyright (C) 2009 Griffin Brown Digitial Publishing Ltd
 * 
 * This program is free software: you can redistribute it and/or modify it under the terms of
 * the GNU Affero General Public License as published by the Free Software Foundation, either
 * version 3 of the License, or (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
 * the GNU Affero General Public License for more details.
 * 
 * You should have received a copy of the GNU Affero General Public License along with this
 * program. If not, see <http://www.gnu.org/licenses/>.
 */

package se.pagero.schematron;

import org.apache.log4j.Logger;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;

import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.*;
import java.net.URL;
import java.net.URLConnection;

public class SchematronSchema
{
    private byte[] schemaAsBytes;
    static Logger logger = Logger.getLogger( SchematronSchema.class );
    private Session session;
    private URL url;


    public SchematronSchema( Session session, URL url )
    {
        this.session = session;
        logger.debug( "Constructing from URL: " + url.toString() );
        this.schemaAsBytes = Utils.derefUrl( url );
        this.url = url;
    }


    public SchematronSchema( InputStream is )
    {
        logger.debug( "Constructing from InpuStream" );
        try
        {
            this.schemaAsBytes = Utils.getBytesToEndOfStream( is, false );
        }
        catch( IOException e )
        {
            logger.error( e.getMessage() );
        }
    }


    public ValidationReport validateCandidate( URL url )
    {
        ValidationReport vr = null;

        InputStream is = null;
        try
        {
            URLConnection conn = url.openConnection();
            conn.connect();
            is = conn.getInputStream();
            vr = validateCandidate( is );
        }
        catch( IOException e )
        {
            logger.fatal( e.getMessage() );
        }
        finally
        {
            Utils.streamClose( is );
        }

        return vr;
    }


    static void doIncludePreprocess( byte[] schemaAsBytes, ByteArrayOutputStream baos )
    {

    }


    private ValidationReport validateCandidate( InputStream candidateStream )
    {
        JarUriResolver jur = new JarUriResolver();
        TransformerFactory jarAwareTransformerFactory = Utils.getTransformerFactory();
        jarAwareTransformerFactory.setURIResolver( jur );

        ValidationReport vr = null;

        Transformer t = null;
        try
        {
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            byte[] interim = null;
            
            // Step 1. do the inclusion
            logger.debug( "Performing inclusion ..." );
            XMLReader reader = XMLReaderFactory.createXMLReader();
            IncludingFilter filter = new IncludingFilter( url, true );
            filter.setParent( reader );
            filter.setContentHandler( new XMLWriter( new OutputStreamWriter( baos ) ) );
            filter.parse( new InputSource( new ByteArrayInputStream( this.schemaAsBytes ) ) );
            interim = baos.toByteArray();
            logger.debug( "Result of inclusion (step 1)" );
            logger.debug( new String(baos.toByteArray()).substring(0, 1000) );
            baos.reset();

            // Step 2. for abstract template processing
            logger.debug( "Running abstract template expansion transform ..." );
            Source xsltSource = jur.resolve( "iso_abstract_expand.xsl", null );
            t = jarAwareTransformerFactory.newTransformer( xsltSource );
            t.transform( new StreamSource( new ByteArrayInputStream( interim ) ),
                    new StreamResult( baos ) );
            interim = baos.toByteArray();
            logger.debug( "Result of abstract template expansion transform (step 2)" );
            logger.debug( new String(baos.toByteArray()).substring(0, 1000) );
            baos.reset();

            // Step 3. compile schema to XSLT
            logger.debug( "Transforming schema to XSLT ..." );
            xsltSource = jur.resolve( "iso_svrl_for_xslt2.xsl", null );
            t = jarAwareTransformerFactory.newTransformer( xsltSource );
            t.setParameter( "full-path-notation", "4" );
            if( session.getPhase() != null )
            {
                t.setParameter( "phase", session.getPhase() );
            }
            t.transform( new StreamSource( new ByteArrayInputStream( interim ) ),
                    new StreamResult( baos ) );
            interim = baos.toByteArray();
            logger.debug( "Result of xslt (step 3)" );
            logger.debug( new String(baos.toByteArray()).substring(0, 1000) );
            baos.reset();

            // Step 4. Apply XSLT to candidate
            logger.debug( "Applying XSLT to candidate" );
            xsltSource = new StreamSource( new ByteArrayInputStream( interim ) );
            t = Utils.getTransformerFactory().newTransformer( xsltSource );
            t.transform( new StreamSource( candidateStream ), new StreamResult( baos ) );
            vr = new ValidationReport( baos.toByteArray() );
            logger.debug( "Result of report (step 4)" );
            logger.debug( new String(baos.toByteArray()).substring(0, 1000) );

        }
        catch( Exception e )
        {
            e.printStackTrace();
            logger.fatal( e.getMessage() );
            throw new RuntimeException(
                    "Cannot instantiate XSLT transformer, or transformation failure: "
                            + e.getMessage(), e );
        }

        return vr;

    }


    public URL getUrl()
    {
        return url;
    }

}
