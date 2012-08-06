package org.schematron.filter;

import java.util.ArrayList;
import java.util.List;

public class ElementPath {
    String name;
    ElementPath parent;
    List<ElementPath> children = new ArrayList<ElementPath>();
    String message;
    ValidationLevel level;

    ElementPath(String name, ElementPath parent) {
        this.name = name;
        this.parent = parent;

        if (parent != null) {
            parent.getChildren().add(this);
        }
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public ValidationLevel getLevel() {
        return level;
    }

    public void setLevel(ValidationLevel level) {
        this.level = level;
    }

    public List<ElementPath> getChildren() {
        return children;
    }

    public ElementPath getChildElementWithName(String name) {
        for (ElementPath path : children) {
            if (path.name.equals(name)) {
                return path;
            }
        }
        return null;
    }
}
