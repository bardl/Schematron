package org.schematron.filter;

import org.junit.Assert;
import org.junit.Test;
import org.schematron.validation.SchematronValidator;

import java.io.IOException;
import java.io.InputStream;

public class ValidationFilterFactoryTest {

    @Test
    public void testLocateOIOUBLFilter() throws IOException {
        Assert.assertEquals(OIOUBLValidationFilter.class, ValidationFilterFactory.identifyAndCreateReportValidator(getReportFragment("oioubl-validationreport-error.xml")).getClass());
    }

    @Test
    public void testLocateSVRLFilter() throws IOException {
        Assert.assertEquals(SVRLValidationFilter.class, ValidationFilterFactory.identifyAndCreateReportValidator(getReportFragment("svrl-validationreport-error.xml")).getClass());
    }

    private String getReportFragment(String reportName) throws IOException {
        byte[] report = new byte[SchematronValidator.REPORT_IDENTIFY_LENGTH];
        InputStream inputStream = null;
        try {
            inputStream = getClass().getClassLoader().getResourceAsStream("org/schematron/filter/" + reportName);
            inputStream.read(report);
        } finally {
            if (inputStream != null) {
                inputStream.close();
            }
        }
        return new String(report);
    }
}
