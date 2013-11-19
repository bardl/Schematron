package org.schematron;

import org.schematron.loader.SchematronCompiler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.schematron.commons.XsltVersion;
import org.schematron.loader.SchematronLoader;

import javax.xml.transform.TransformerException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class SchematronCompilator {

    public void execute(FileInputStream fullPathToSchematronFile, FileOutputStream outputStream, File file) throws IOException, SAXException, TransformerException {
        SchematronCompiler compiler = new SchematronCompiler();
        byte[] compiledSchema = compiler.compileSchematron(new InputSource(fullPathToSchematronFile), XsltVersion.XSL_VERSION_2, new ResourceResolver(file.getCanonicalFile().getParent() + File.separator));
        outputStream.write(compiledSchema);
    }
}
