package org.schematron;

import org.apache.maven.plugin.AbstractMojo;
import org.apache.maven.plugin.MojoExecutionException;
import org.apache.maven.plugin.MojoFailureException;
import org.xml.sax.SAXException;

import javax.xml.transform.TransformerException;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * Goal which runs schematron compiler
 *
 * @goal install
 * @phase install
 */
public class SchematronMojo extends AbstractMojo {

    /**
     * Location of the file.
     *
     * @parameter expression="${project.build.directory}"
     * @required
     */
    private File outputDirectory;

    /**
     * Location of the file.
     *
     * @parameter expression="${basedir}"
     * @required
     */
    private File baseDirectory;

     /**
     * Schematron files.
     *
     * @parameter
     */
    private String[] schematronFiles;


    public void execute() throws MojoExecutionException, MojoFailureException {
        checkMandatoryParameters();

        long start = System.currentTimeMillis();

        getLog().info(getStartMessage());

        getLog().info("outputDirectory: " + outputDirectory);
        getLog().info("baseDirectory: " + baseDirectory);

        for (String schematronFile : schematronFiles) {
            compileSchematronFile(schematronFile);
        }

        logEndMessage(System.currentTimeMillis() - start, schematronFiles.length);
    }

    private void logEndMessage(long millis, int nrOfCompiledFiles) {
        getLog().info("Finished compiling " + nrOfCompiledFiles + " schema(s).\n");
        getLog().info("Compiled transformations (xsl-files) can be found in target folder: " + outputDirectory + ".\n");
        getLog().info("Total time: " + millis/1000 + " seconds.\n");        
    }

    private String getStartMessage() {
        StringBuilder message = new StringBuilder();
        message.append("\n\n-------------------------------------------------------\n");
        message.append("Schematron Compiler");
        message.append("\n-------------------------------------------------------\n");
        return message.toString();
    }

    private void compileSchematronFile(String schematronFile) throws MojoExecutionException {
        FileInputStream fullPathToSchematronFile = null;
        FileOutputStream outputStream = null;
        File file = null;
        try {
            file = new File(baseDirectory.getCanonicalPath(), schematronFile);
            fullPathToSchematronFile = new FileInputStream(file);
            outputStream = new FileOutputStream(outputDirectory + File.separator + getResultFileName(schematronFile));

            getLog().info("Compiling [" + file.getCanonicalPath() + "]");
            new SchematronCompilator().execute(fullPathToSchematronFile, outputStream, file);
        } catch (IOException e) {
            throw new MojoExecutionException("Unable to locate schematronfile [" + schematronFile + "] with baseDirectory [" + baseDirectory.toString() + "].", e);
        } catch (SAXException e) {
            throw new MojoExecutionException("Unable to produce schematronfile [" + schematronFile + "] with baseDirectory [" + baseDirectory.toString() + "].", e);
        } catch (TransformerException e) {
            throw new MojoExecutionException("Unable to create transformer when compiling schematronfile [" + schematronFile + "] with baseDirectory [" + baseDirectory.toString() + "].", e);
        } finally {
            closeStream(fullPathToSchematronFile, file.toString(), "Unable to close schematron file after compilation.");
            closeStream(outputStream, outputDirectory + File.separator + getResultFileName(schematronFile), "Unable to close output file after compilation.");
        }
    }

    private void closeStream(Closeable outputStream, String nameOfStream, String errorDescription) {
        try {
            if (outputStream != null) {
                getLog().info("Closing [" + nameOfStream + "]");
                outputStream.close();
            }
        } catch (IOException e) {
            getLog().error(errorDescription);
        }
    }

    private String getResultFileName(String schematronFile) {
        String file = new File(schematronFile).getName();
        if (file.contains(".")) {
            file = file.substring(0, file.lastIndexOf("."));
        }
        return file + ".xsl";
    }

    private void checkMandatoryParameters() throws MojoFailureException {
        if (schematronFiles == null) {
            throw new MojoFailureException("Mandatory parameter [schematronFiles] is not specified for schematron maven plugin. " +
                    "\n\nExample:\n\n" +
                    "<plugin>\n" +
                    "\t...\n" +
                    "\t<configuration>\n" +
                    "\t\t<schematronFiles>\n" +
                    "\t\t\t<param>/src/main/resource/nameOfFormat/nameOfSchematronFile1.sch</param>\n" +
                    "\t\t\t<param>/src/main/resource/nameOfFormat/nameOfSchematronFile2.sch</param>\n" +
                    "\t\t</schematronFiles>\n" +
                    "\t</configuration>\n" +
                    "\t...\n" +
                    "</plugin>\n\n");
        }
    }
}

