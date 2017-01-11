package org.schematron;

import org.apache.commons.cli.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import javax.xml.transform.TransformerException;
import java.io.*;

public class FileSchematronCompiler {

    private static Logger logger = LoggerFactory.getLogger(BaseSchematronCompiler.class);

    public static void main(String[] args) throws ParseException, SchematronCompilerException {
        Options options = createArgumentOptions();
        CommandLineParser parser = new GnuParser();
        CommandLine commandLine = parser.parse(options, args);
        if (!containsMandatoryArguments(commandLine)) {
            System.exit(0);
        }

        compileSchematronFiles(new File(commandLine.getOptionValue("i")), new File(commandLine.getOptionValue("o")), commandLine.getOptionValue("f"));
    }

    private static boolean containsMandatoryArguments(CommandLine commandLine) {
        boolean result = true;
        if (!commandLine.hasOption("i")) {
            System.out.println("The input folder must be specified.");
            result = false;
        }
        if (!commandLine.hasOption("o")) {
            System.out.println("The output folder must be specified.");
            result = false;
        }
        return result;
    }

    private static void compileSchematronFiles(File inputFolder, File outputFolder, String file) throws SchematronCompilerException {
        if (file == null) {
            for (File schematronFile : inputFolder.listFiles(new FilenameFilter() {
                @Override
                public boolean accept(File dir, String name) {
                    return name.endsWith(".sch");
                }})) {

                compileSchematronFile(inputFolder, outputFolder, schematronFile.getName());
            }
        } else {
            compileSchematronFile(inputFolder, outputFolder, file);
        }
    }

    private static Options createArgumentOptions() {
        Option inputfolder = OptionBuilder.withArgName("inputfolder").hasArg().withDescription("The folder containing schematron rules to compile.").create("i");
        Option inputfile = OptionBuilder.withArgName("inputfile").hasArg().withDescription("A specific file to compile").create("f");
        Option outputfolder = OptionBuilder.withArgName("outputfolder").hasArg().withDescription("The folder to write compiled schematron rules.").create("o");
        Options options = new Options();
        options.addOption(inputfolder);
        options.addOption(inputfile);
        options.addOption(outputfolder);
        return options;
    }

    private static void compileSchematronFile(File baseDirectory, File outputDirectory, String schematronFile) throws SchematronCompilerException {
        FileInputStream fullPathToSchematronFile = null;
        FileOutputStream outputStream = null;
        File file = null;
        try {
            file = new File(baseDirectory.getCanonicalPath(), schematronFile);
            fullPathToSchematronFile = new FileInputStream(new File(baseDirectory.getCanonicalPath(), schematronFile));
            outputStream = new FileOutputStream(new File(outputDirectory, getResultFileName(schematronFile)));

            logger.info("Compiling [" + file.getCanonicalPath() + "]");
            new FileSchematronCompiler().execute(fullPathToSchematronFile, outputStream, file);
        } catch (IOException e) {
            throw new SchematronCompilerException("Unable to locate schematronfile [" + schematronFile + "] with baseDirectory [" + baseDirectory.toString() + "].", e);
        } catch (SAXException e) {
            throw new SchematronCompilerException("Unable to produce schematronfile [" + schematronFile + "] with baseDirectory [" + baseDirectory.toString() + "].", e);
        } catch (TransformerException e) {
            throw new SchematronCompilerException("Unable to create transformer when compiling schematronfile [" + schematronFile + "] with baseDirectory [" + baseDirectory.toString() + "].", e);
        } finally {
            closeStream(fullPathToSchematronFile, "Unable to close schematron file after compilation.");
            closeStream(outputStream, "Unable to close output file after compilation.");
        }
    }

    public void execute(FileInputStream fullPathToSchematronFile, FileOutputStream outputStream, File file) throws IOException, SAXException, TransformerException {
        BaseSchematronCompiler compiler = new BaseSchematronCompiler();
        byte[] compiledSchema = compiler.compileSchematron(new InputSource(fullPathToSchematronFile), new ResourceResolver(file.getCanonicalFile().getParent() + File.separator));
        outputStream.write(compiledSchema);
    }

    private static void closeStream(Closeable outputStream, String errorDescription) {
        try {
            if (outputStream != null) {
                outputStream.close();
            }
        } catch (IOException e) {
            logger.error(errorDescription);
        }
    }

    private static String getResultFileName(String schematronFile) {
        String file = new File(schematronFile).getName();
        if (file.contains(".")) {
            file = file.substring(0, file.lastIndexOf("."));
        }
        return file + ".xsl";
    }
}
