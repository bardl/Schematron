package se.pagero.schematron;


public class XMLWriterEx extends XMLWriter
{
    
    public XMLWriterEx()
    {
        ETAGO = "<span class='etag'>&lt;";
        ETAGC = "></span>";
        PIO = "<span class='pi'>&lt;?";
        PIC = "?></span>";
    }

}
