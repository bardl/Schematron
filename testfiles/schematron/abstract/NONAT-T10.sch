<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T10 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="NONATT10">
  <rule context="$Supplier_Party">
    <assert test="$NONAT-T10-R001" flag="fatal">[NONAT-T10-R001]-The Norwegian legal registration ID for the supplier MUST be provided according to "FOR 2004-12-01 nr 1558 - &#167; 5-1-1. Point 2"</assert>
    <assert test="$NONAT-T10-R006" flag="fatal">[NONAT-T10-R006]-A supplier postal address in an invoice MUST contain at least, Street name, city name, zip code and country code.</assert>
  </rule>
  <rule context="$Invoice_Line">
    <assert test="$NONAT-T10-R005" flag="fatal">[NONAT-T10-R005]-Each invoice line MUST contain a quantity according to "FOR 2004-12-01 nr 1558 - &#167; 5-1-1. Point 3" </assert>
  </rule>
  <rule context="$Invoice">
    <assert test="$NONAT-T10-R002" flag="fatal">[NONAT-T10-R002]-Payment due date MUST be provided in the invoice according to "FOR 2004-12-01 nr 1558 - &#167; 5-1-1. Point 5" </assert>
    <assert test="$NONAT-T10-R003" flag="fatal">[NONAT-T10-R003]-The actual delivery date  MUST be provided in the invoice according to "FOR 2004-12-01 nr 1558 - &#167; 5-1-1. Point 4" </assert>
    <assert test="$NONAT-T10-R004" flag="fatal">[NONAT-T10-R004]-A Delivery address in an invoice MUST contain at least, city, zip code and country code according to "FOR 2004-12-01 nr 1558 - &#167; 5-1-1. Point 4"</assert>
  </rule>
  <rule context="$Customer_Party">
    <assert test="$NONAT-T10-R007" flag="fatal">[NONAT-T10-R007]-A customer postal address in an invoice MUST contain at least, Street name, city name, zip code and country code.</assert>
  </rule>
</pattern>
