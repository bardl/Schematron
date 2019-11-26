package org.schematron.filter;

import org.junit.Assert;
import org.junit.Test;
import org.schematron.exception.SchematronException;
import org.schematron.model.Assertion;
import org.schematron.model.SchematronResult;
import org.xml.sax.InputSource;

import java.util.ArrayList;
import java.util.List;

/**
 * Tests for FilteredSvrlTranslator
 */
public class FilteredSvrlTranslatorTest {

    @Test
    public void shouldFilterSchematraonResult() {
        SchematronResult schematronResult = new SchematronResult() {
            @Override
            public List<Assertion> getWarnings() {
                List<Assertion> warnings = new ArrayList<>();
                warnings.add(new Assertion("afilter", "afilter-desc", "test", "location"));
                warnings.add(new Assertion("filter1", "filter1-desc", "test", "location"));
                return warnings;
            }

            @Override
            public List<Assertion> getErrors() {
                List<Assertion> errors = new ArrayList<>();
                errors.add(new Assertion("filter2", "filter2-desc", "test", "location"));
                return errors;
            }

            @Override
            public List<Assertion> getFatals() {
                List<Assertion> fatals = new ArrayList<>();
                fatals.add(new Assertion("afilter", "afilter-desc", "test", "location"));
                fatals.add(new Assertion("filter3", "filter3-desc", "test", "location"));
                fatals.add(new Assertion("afilter", "afilter-desc", "test", "location"));
                return fatals;
            }
        };

        List<String> filters = new ArrayList<>();
        filters.add("filter1");
        filters.add("filter2");
        filters.add("filter3");
        MockedFilteredSvrlTranslator translator = new MockedFilteredSvrlTranslator(schematronResult);
        translator.setFilters(filters);

        SchematronResult filteredResult = translator.transform(new InputSource());
        Assert.assertEquals(filteredResult.getWarnings().size(), 1);
        Assert.assertEquals(filteredResult.getErrors().size(), 0);
        Assert.assertEquals(filteredResult.getFatals().size(), 2);
    }

    @Test
    public void shouldFilterAssertionsInFilterList() {
        List<String> filters = new ArrayList<>();
        filters.add("filter1");
        filters.add("filter2");
        filters.add("OP-T10-R004");

        List<Assertion> assertions1 = new ArrayList<>();
        assertions1.add(new Assertion("afilter", "afilter-desc", "test", "location"));
        assertions1.add(new Assertion("filter3", "filter3-desc", "test", "location"));
        assertions1.add(new Assertion("[OP-T10-R004]-A payee account identifier scheme MUST be from the Account ID PEPPOL code list", "afilter-desc", "test", "location"));

        FilteredSvrlTranslator translator = new FilteredSvrlTranslator();
        translator.setFilters(filters);
        List<Assertion> filteredAssertion = translator.filter(assertions1);
        Assert.assertEquals(filteredAssertion.size(), 2);
    }

    @Test
    public void shouldNotFilterAssertionsNotInFilterList() {
        List<String> filters = new ArrayList<>();
        filters.add("filter1");
        filters.add("filter2");
        filters.add("OP-T10-R004");

        List<Assertion> assertions1 = new ArrayList<>();
        assertions1.add(new Assertion("afilter", "afilter-desc", "test", "location"));
        assertions1.add(new Assertion("filter3", "filter3-desc", "test", "location"));
        assertions1.add(new Assertion("[OP-T10-R005]-A payee account identifier scheme MUST be from the Account ID PEPPOL code list", "afilter-desc", "test", "location"));

        FilteredSvrlTranslator translator = new FilteredSvrlTranslator();
        translator.setFilters(filters);
        List<Assertion> filteredAssertion = translator.filter(assertions1);
        Assert.assertEquals(filteredAssertion.size(), 3);
    }

    private class MockedFilteredSvrlTranslator extends FilteredSvrlTranslator {
        SchematronResult schematronResult;

        MockedFilteredSvrlTranslator(SchematronResult schematronResult) {
            this.schematronResult = schematronResult;
        }

        @Override
        public SchematronResult performSvrlTransform(InputSource source) throws SchematronException {
            return schematronResult;
        }
    }

}
