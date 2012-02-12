package se.pagero.schematron.commons;

/**
 * Created by IntelliJ IDEA.
 * User: bardl
 * Date: 2012-feb-11
 * Time: 16:25:56
 * To change this template use File | Settings | File Templates.
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
