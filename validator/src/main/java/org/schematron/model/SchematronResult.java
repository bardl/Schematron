package org.schematron.model;

import java.util.List;

public interface SchematronResult {
  List<Assertion> getWarnings();
  List<Assertion> getErrors();
  List<Assertion> getFatals();
}
