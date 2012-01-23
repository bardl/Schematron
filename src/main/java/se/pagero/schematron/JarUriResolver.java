/*  This file is part of the source of
 * 
 *  Probatron4J - a Schematron validator for Java(tm)
 * 
 *  Copyright (C) 2009 Griffin Brown Digitial Publishing Ltd
 *   
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU Affero General Public License as
 *  published by the Free Software Foundation, either version 3 of the
 *  License, or (at your option) any later version.
 *  
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU Affero General Public License for more details.
 *  
 *  You should have received a copy of the GNU Affero General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

package se.pagero.schematron;

import org.apache.log4j.Logger;

import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;
import javax.xml.transform.stream.StreamSource;
import java.io.InputStream;

public class JarUriResolver implements URIResolver
{
    static Logger logger = Logger.getLogger( JarUriResolver.class );

    public Source resolve( String href, String base ) throws TransformerException
    {
        logger.debug( "Resolving stylesheet URI: " + href );
        logger.debug( "Location: " + getClass().getClassLoader().getResource("") );
        InputStream is = getClass().getClassLoader().getResourceAsStream( "stylesheet/" + href );
        return new StreamSource( is );        
    }

}
