<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T14 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="BIIRULEST14">
  <rule context="$Total_Amounts">
    <assert test="$BIIRULE-T14-R011" flag="fatal">[BIIRULE-T14-R011]-Credit note total line extension amount MUST equal the sum of the line totals</assert>
    <assert test="$BIIRULE-T14-R012" flag="fatal">[BIIRULE-T14-R012]-A credit note tax exclusive amount MUST equal the sum of lines plus allowances and charges on header level.</assert>
    <assert test="$BIIRULE-T14-R013" flag="fatal">[BIIRULE-T14-R013]-A credit note tax inclusive amount MUST equal the tax exclusive amount plus all tax total amounts and the rounding amount.</assert>
    <assert test="$BIIRULE-T14-R014" flag="fatal">[BIIRULE-T14-R014]-Tax inclusive amount in a credit note MUST NOT be negative</assert>
    <assert test="$BIIRULE-T14-R015" flag="fatal">[BIIRULE-T14-R015]-Total allowance it MUST be equal to the sum of allowances at document level</assert>
    <assert test="$BIIRULE-T14-R016" flag="fatal">[BIIRULE-T14-R016]-Total charges it MUST be equal to the sum of document level charges.</assert>
    <assert test="$BIIRULE-T14-R017" flag="fatal">[BIIRULE-T14-R017]-Amount due is the tax inclusive amount minus what has been prepaid.</assert>
  </rule>
  <rule context="$Tax_Total">
    <assert test="$BIIRULE-T14-R009" flag="fatal">[BIIRULE-T14-R009]-A credit note MUST have a tax total refering to a single tax scheme</assert>
    <assert test="$BIIRULE-T14-R010" flag="fatal">[BIIRULE-T14-R010]-Each tax total MUST equal the sum of the subcategory amounts.</assert>
  </rule>
  <rule context="$Tax_Subtotal">
    <assert test="$BIIRULE-T14-R043" flag="fatal">[BIIRULE-T14-R043]-A Credit Note MUST specify the taxable amount per tax subtotal.</assert>
    <assert test="$BIIRULE-T14-R044" flag="fatal">[BIIRULE-T14-R044]-A Credit Note MUST specify the tax amount per tax subtotal.</assert>
    <assert test="$BIIRULE-T14-R047" flag="fatal">[BIIRULE-T14-R047]-A credit note MUST specify the tax amount per VAT subtotal.</assert>
  </rule>
  <rule context="$Tax_Scheme">
    <assert test="$BIIRULE-T14-R046" flag="fatal">[BIIRULE-T14-R046]-Every tax scheme MUST be defined through an identifier.</assert>
  </rule>
  <rule context="$Tax_Category">
    <assert test="$BIIRULE-T14-R045" flag="fatal">[BIIRULE-T14-R045]-Every tax category MUST be defined through an identifier.</assert>
  </rule>
  <rule context="$Supplier">
    <assert test="$BIIRULE-T14-R002" flag="warning">[BIIRULE-T14-R002]-A supplier address in a credit note SHOULD contain at least the city name and a zip code or have an address identifier.</assert>
    <assert test="$BIIRULE-T14-R003" flag="warning">[BIIRULE-T14-R003]-In cross border trade the VAT identifier for the supplier should be prefixed with country code.</assert>
  </rule>
  <rule context="$Party_Legal_Entity">
    <assert test="$BIIRULE-T14-R039" flag="fatal">[BIIRULE-T14-R039]-Company identifier MUST be specified when describing a company legal entity.</assert>
  </rule>
  <rule context="$Item_Price">
    <assert test="$BIIRULE-T14-R022" flag="fatal">[BIIRULE-T14-R022]-Prices of items MUST be positive or zero</assert>
  </rule>
  <rule context="$Item">
    <assert test="$BIIRULE-T14-R019" flag="warning">[BIIRULE-T14-R019]-Product names SHOULD NOT exceed 50 characters long</assert>
    <assert test="$BIIRULE-T14-R020" flag="warning">[BIIRULE-T14-R020]-If standard identifiers are provided within an item description, an Scheme Identifier SHOULD be provided (e.g. GTIN)</assert>
    <assert test="$BIIRULE-T14-R021" flag="warning">[BIIRULE-T14-R021]-Classification codes within an item description SHOULD use a standard scheme for codes (e.g. CPV or UNSPSC)</assert>
  </rule>
  <rule context="$Invoice_Period">
    <assert test="$BIIRULE-T14-R001" flag="fatal">[BIIRULE-T14-R001]-An invoice period end date MUST be later or equal to an invoice period start date</assert>
  </rule>
  <rule context="$Customer">
    <assert test="$BIIRULE-T14-R004" flag="warning">[BIIRULE-T14-R004]-A customer address in a credit note SHOULD contain at least city and zip code or have an address identifier.</assert>
    <assert test="$BIIRULE-T14-R005" flag="warning">[BIIRULE-T14-R005]-In cross border trade the VAT identifier for the customer should be prefixed with country code.</assert>
  </rule>
  <rule context="$Credit_Note_Line">
    <assert test="$BIIRULE-T14-R027" flag="fatal">[BIIRULE-T14-R027]-Each credit note line MUST contain the product/service name</assert>
    <assert test="$BIIRULE-T14-R034" flag="fatal">[BIIRULE-T14-R034]-Credit note lines MUST have a line identifier.</assert>
    <assert test="$BIIRULE-T14-R050" flag="fatal">[BIIRULE-T14-R050]-Credit note lines MUST have a line total amount.</assert>
    <assert test="$BIIRULE-T14-R018" flag="fatal">[BIIRULE-T14-R018]-Credit note line amount MUST be equal to the price amount multiplied by the quantity plus charges minus allowances at line level</assert>
    <assert test="$BIIRULE-T14-R051" flag="fatal">[BIIRULE-T14-R051]-Credit Note line MUST contain the item price</assert>
  </rule>
  <rule context="$Credit_Note">
    <assert test="$BIIRULE-T14-R025" flag="fatal">[BIIRULE-T14-R025]-A Credit Note MUST have the date of issue.</assert>
    <assert test="$BIIRULE-T14-R026" flag="fatal">[BIIRULE-T14-R026]-A Credit Note MUST have a Credit Note number.</assert>
    <assert test="$BIIRULE-T14-R028" flag="fatal">[BIIRULE-T14-R028]-A Credit Note MUST contain the full name of the supplier.</assert>
    <assert test="$BIIRULE-T14-R029" flag="fatal">[BIIRULE-T14-R029]-A Credit Note MUST contain the full name of the customer.</assert>
    <assert test="$BIIRULE-T14-R030" flag="fatal">[BIIRULE-T14-R030]-If the VAT total amount in a Credit Note exists then the sum of taxable amount in sub categories MUST equal the sum of Credit Note tax exclusive amount.</assert>
    <assert test="$BIIRULE-T14-R031" flag="fatal">[BIIRULE-T14-R031]-A Credit Note MUST have a syntax identifier.</assert>
    <assert test="$BIIRULE-T14-R032" flag="fatal">[BIIRULE-T14-R032]-A Credit Note MUST have a customization identifier.</assert>
    <assert test="$BIIRULE-T14-R033" flag="fatal">[BIIRULE-T14-R033]-A Credit Note MUST have a profile identifier.</assert>
    <assert test="$BIIRULE-T14-R035" flag="fatal">[BIIRULE-T14-R035]-A Credit Note MUST specify at least one line item.</assert>
    <assert test="$BIIRULE-T14-R036" flag="fatal">[BIIRULE-T14-R036]-A Credit Note MUST specify the currency code for the document.</assert>
    <assert test="$BIIRULE-T14-R037" flag="fatal">[BIIRULE-T14-R037]-A Credit Note MUST specify the total payable amount.</assert>
    <assert test="$BIIRULE-T14-R038" flag="fatal">[BIIRULE-T14-R038]-A Credit Note MUST specify the total amount with taxes included.</assert>
    <assert test="$BIIRULE-T14-R040" flag="fatal">[BIIRULE-T14-R040]-A Credit Note MUST specify the total amount without taxes.</assert>
    <assert test="$BIIRULE-T14-R041" flag="fatal">[BIIRULE-T14-R041]-A Credit Note MUST specify the sum of the line amounts.</assert>
    <assert test="$BIIRULE-T14-R052" flag="fatal">[BIIRULE-T14-R052]-A Credit Note MUST contain tax information</assert>
  </rule>
  <rule context="$Country">
    <assert test="$BIIRULE-T14-R042" flag="fatal">[BIIRULE-T14-R042]-Country in an address MUST be specified using the country code.</assert>
  </rule>
  <rule context="$Allowance_Percentage">
    <assert test="$BIIRULE-T14-R023" flag="fatal">[BIIRULE-T14-R023]-An allowance percentage MUST NOT be negative.</assert>
  </rule>
  <rule context="$Allowance">
    <assert test="$BIIRULE-T14-R024" flag="warning">[BIIRULE-T14-R024]-In allowances, both or none of percentage and base amount SHOULD be provided</assert>
  </rule>
</pattern>
