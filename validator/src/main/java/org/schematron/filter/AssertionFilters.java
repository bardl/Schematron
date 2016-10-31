package org.schematron.filter;

import org.schematron.model.Assertion;

import java.util.List;

/**
 * Assertion based filtering
 */
public interface AssertionFilters {

    public List<String> getFilters();

    public void setFilters(List<String> filters);

    public List<Assertion> filter(List<Assertion> assertions);

}
