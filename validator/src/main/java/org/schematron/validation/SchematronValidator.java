package org.schematron.validation;

import org.schematron.exception.SchematronException;
import org.schematron.model.SchematronResult;

import javax.xml.transform.Source;

public interface SchematronValidator {
  SchematronResult validate(Source source) throws SchematronException;
}
