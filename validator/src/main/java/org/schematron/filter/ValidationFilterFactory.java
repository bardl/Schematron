package org.schematron.filter;

import org.schematron.exception.SchematronException;

import java.util.ServiceLoader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ValidationFilterFactory {    

    public static ValidationFilter identifyAndCreateReportValidator(String report) {
        ServiceLoader<ValidationFilter> ldr = ServiceLoader.load(ValidationFilter.class);
        for (ValidationFilter filter : ldr) {
            Pattern pattern = Pattern.compile(filter.getMatchPattern(), Pattern.MULTILINE | Pattern.DOTALL | Pattern.CANON_EQ);
            Matcher matcher = pattern.matcher(report);
            if (matcher.matches()) {
                return filter;
            }
        }
        throw new SchematronException("Unable to identify correct report filter (ValidationFilter) for report [" + report + "...]");
    }
}
