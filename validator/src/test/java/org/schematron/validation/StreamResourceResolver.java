package org.schematron.validation;

import org.w3c.dom.ls.LSInput;

import java.io.*;

/**
 * StreamResourceResolver 
 */
public class StreamResourceResolver implements LSInput {

    private InputStream inputStream;
    private String encoding;
    private Reader reader;
    private String stringData;

    public StreamResourceResolver(InputStream inputStream, String encoding) {
        this.inputStream = inputStream;
        this.encoding = encoding;
    }

    public Reader getCharacterStream() {
        Reader result = reader;
        if (result == null) {
            try {
                result = new InputStreamReader(inputStream, encoding);
            } catch (UnsupportedEncodingException e) {
                throw new RuntimeException(e);
            }
        }
        return result;
    }

    public void setCharacterStream(Reader reader) {
        this.reader = reader;
    }

    public InputStream getByteStream() {
        return inputStream;
    }

    public void setByteStream(InputStream inputStream) {
        this.inputStream = inputStream;
    }

    public String getStringData() {
        String result = stringData;
        if (result == null) {
            try {
                byte[] data = new byte[inputStream.available()];
                inputStream.read(data);
                result = new String(data, encoding);
            } catch (IOException e) {
                throw new RuntimeException("Error occurred when returning StringData.", e);
            }
        }
        return result;
    }

    public void setStringData(String s) {
        this.stringData = s;
    }

    public String getSystemId() {
        return "";
    }

    public void setSystemId(String s) {}

    public String getPublicId() {
        return null;
    }

    public void setPublicId(String s) {}

    public String getBaseURI() {
        return null;
    }

    public void setBaseURI(String s) {}

    public String getEncoding() {
        return encoding;
    }

    public void setEncoding(String encoding) {
        this.encoding = encoding;
    }

    public boolean getCertifiedText() {
        return false;
    }

    public void setCertifiedText(boolean b) {}
}
