<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T14 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="NONATT14">
  <rule context="$Supplier_Party">
    <assert test="$NONAT-T14-R001" flag="fatal">[NONAT-T14-R001]-PartyLegalEntity for AccountingSupplierParty MUST be provided according to "FOR 2004-12-01 nr 1558 - &#167; 5-1-1. Point 2"</assert>
    <assert test="$NONAT-T14-R003" flag="fatal">[NONAT-T14-R003]-A supplier postal address in an invoice MUST contain at least, Street name, city name, zip code and country code.</assert>
  </rule>
  <rule context="$Customer_Party">
    <assert test="$NONAT-T14-R004" flag="fatal">[NONAT-T14-R004]-A customer postal address in an invoice MUST contain at least, Street name, city name, zip code and country code.</assert>
  </rule>
  <rule context="$Credit_Note_Line">
    <assert test="$NONAT-T14-R002" flag="fatal">[NONAT-T14-R002]-Each credit note line MUST contain a quantity according to "FOR 2004-12-01 nr 1558 - &#167; 5-1-1. Point 3" </assert>
  </rule>
</pattern>
