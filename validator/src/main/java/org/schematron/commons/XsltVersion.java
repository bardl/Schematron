package org.schematron.commons;

/**
 * XsltVersion contains information about resources used depending on which xslt version is preferred.
 * @author bard.langoy
 */
public enum XsltVersion {
    XSL_VERSION_1("xslt1.0", "iso_abstract_expand.xsl", "iso_svrl_for_xslt1.xsl"),
    XSL_VERSION_2("xslt2.0", "iso_abstract_expand.xsl", "iso_svrl_for_xslt2.xsl");

    private String resourcePath;
    private String abstractExpand;
    private String svrlForXslt;

    XsltVersion(String resourcePath, String abstractExpand, String svrlForXslt) {
        this.resourcePath = resourcePath;
        this.abstractExpand = abstractExpand;
        this.svrlForXslt = svrlForXslt;
    }

    public String getResourcePath() {
        return resourcePath;
    }

    public String getAbstractExpand() {
        return abstractExpand;
    }

    public String getSvrlForXslt() {
        return svrlForXslt;
    }
}
