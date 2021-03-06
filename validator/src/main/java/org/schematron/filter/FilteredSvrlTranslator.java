package org.schematron.filter;

import org.schematron.exception.SchematronException;
import org.schematron.model.Assertion;
import org.schematron.model.FilteredSchematronResult;
import org.schematron.model.SchematronResult;
import org.xml.sax.InputSource;

import java.util.ArrayList;
import java.util.List;

/**
 * SchematronResultTransformer which doing assertion based filtering and
 * schematraon transform
 */
public class FilteredSvrlTranslator extends SVRLSchematronResultTransformer implements AssertionFilters {

    private List<String> filters;

    @Override
    public SchematronResult transform(InputSource source) throws SchematronException {
        SchematronResult schematronResult = performSvrlTransform(source);

        return new FilteredSchematronResult(filter(schematronResult.getWarnings()),
                filter(schematronResult.getErrors()),
                filter(schematronResult.getFatals()));
    }

    SchematronResult performSvrlTransform(InputSource inputSource) {
        return super.transform(inputSource);
    }

    @Override
    public List<String> getFilters() {
        return filters;
    }

    @Override
    public void setFilters(List<String> filters) {
        this.filters = filters;
    }

    /**
     * Filter assertions based on the filters, if assertion name exists in filters
     * that assertion should filter out
     *
     * @param assertions list of assertions
     * @return filtered assertions
     */
    @Override
    public List<Assertion> filter(List<Assertion> assertions) {
        List<Assertion> filteredAssertion = new ArrayList<>();
        for (Assertion assertion : assertions) {
            if (keepAssertion(assertion)) {
                filteredAssertion.add(assertion);
            }
        }

        return filteredAssertion;
    }

    private boolean keepAssertion(Assertion assertion) {
        for (String filter : getFilters()) {
            if (assertion.getName().contains(filter)) {
                return false;
            }
        }
        return true;
    }

}
