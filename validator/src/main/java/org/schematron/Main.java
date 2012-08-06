package org.schematron;

import com.sun.org.apache.xerces.internal.dom.DOMInputImpl;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.w3c.dom.ls.LSInput;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.schematron.validation.SchematronErrorHandler;
import org.schematron.validation.SchematronSchemaFactory;

import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class Main {
    static Logger logger = Logger.getLogger(Main.class);

    static {
        // set up log message format, etc.
        String logLvl = "DEBUG";
        Properties p = new Properties();
        p.setProperty("log4j.rootCategory", logLvl + ",stderr");
        p.setProperty("log4j.appender.stderr", "org.apache.log4j.ConsoleAppender");
        p.setProperty("log4j.appender.stderr.layout", "org.apache.log4j.PatternLayout");
        p.setProperty("log4j.appender.stderr.target", "System.err");
        p.setProperty("log4j.appender.stderr.layout.ConversionPattern", "%p %m%n");
        PropertyConfigurator.configure(p);
    }

    public static void main(String[] args) throws IOException, SAXException, TransformerException {
//        testSchemaValidation();
        executeNewSchematronValidation();

    }

    private static void executeNewSchematronValidation() throws IOException, TransformerException {
        long t = System.currentTimeMillis();

        String path = "D:\\development\\schematron";
        final String schematronPath = path + "\\testfiles\\schematron\\";

        SchematronErrorHandler errorHandler = new SchematronErrorHandler();
        try {
            SchemaFactory factory = new SchematronSchemaFactory();
            factory.setErrorHandler(errorHandler);
            factory.setResourceResolver(new LSResourceResolver() {

                public LSInput resolveResource(String type, String namespaceURI, String publicId, String systemId, String baseURI) {
                    try {
                        FileInputStream fileInputStream = new FileInputStream(schematronPath + systemId);
                        return new DOMInputImpl(publicId, systemId, baseURI, fileInputStream, "utf-8");
                    } catch (FileNotFoundException e) {
                        throw new RuntimeException("Unable to find resource [" + systemId + "].");
                    }

                }
            });

            FileInputStream fis = new FileInputStream(schematronPath + "NORWAY-UBL-T10.sch");
            Validator validator = factory.newSchema(new StreamSource(fis)).newValidator();

            FileInputStream infile = new FileInputStream(path + "\\testfiles\\BII04 T10 gyldig faktura med alle elementer.xml");
            validator.validate(new StreamSource(infile));
        } catch (SAXException e) {
            System.out.println( e.getMessage() );
        }

        logger.info("Done. Elapsed time (ms):" + (System.currentTimeMillis() - t));
    }

    private static void testSchemaValidation() throws IOException, SAXException {
        SchemaFactory factory = SchemaFactory.newInstance("http://www.w3.org/2001/XMLSchema");

        InputStream inputStream = new FileInputStream("C:\\development\\paysol-master\\xsd schema\\Finvoice\\Version 1.2\\FinvoiceFI12.xsd");
        InputSource _inputSource = new InputSource(inputStream);
        Source _source = new SAXSource(_inputSource);

        Schema schema = factory.newSchema(_source);
        Validator validator = schema.newValidator();

        InputStream xmlIS = new FileInputStream("C:\\Users\\bardl\\Desktop\\testfiler\\finvoice\\FurunoFinlandTest.xml");


        validator.setErrorHandler(new TestErrorHandler());
        validator.validate(new SAXSource(new InputSource(xmlIS)));
    }


    private static class TestErrorHandler implements ErrorHandler {
        public void warning(SAXParseException exception) throws SAXException {
            System.out.println(getErrorMessage("WARN", exception));
        }

        private String getErrorMessage(String warn, SAXParseException exception) {
            StringBuilder message = new StringBuilder();
            message.append(warn);
            message.append(": ");
            message.append(exception.getMessage());
            message.append(", at line [");
            message.append(exception.getLineNumber());
            message.append("], column [");
            message.append(exception.getColumnNumber());
            message.append("].");
            return message.toString();
        }

        public void error(SAXParseException exception) throws SAXException {
            System.out.println(getErrorMessage("ERROR", exception));
        }

        public void fatalError(SAXParseException exception) throws SAXException {
            System.out.println(getErrorMessage("FATAL", exception));
        }
    }

}
