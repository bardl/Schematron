<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T14 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="EUGENT14">
  <rule context="$Allowance_Charge">
    <assert test="$EUGEN-T14-R004" flag="fatal">[EUGEN-T14-R004]-If the VAT total amount in a Credit Note exists then an Allowances Charges amount on document level MUST have tax category for VAT.</assert>
    <assert test="$EUGEN-T14-R022" flag="fatal">[EUGEN-T14-R022]-An allowance or charge amount MUST NOT be negative.</assert>
    <assert test="$EUGEN-T14-R023" flag="warning">[EUGEN-T14-R023]-AllowanceChargeReason text SHOULD be specified for all allowances and charges</assert>
  </rule>
  <rule context="$Classified_Tax_Category">
    <assert test="$EUGEN-T14-R031" flag="fatal">[EUGEN-T14-R031]-If the VAT total amount in a Credit Note exists then each Credit Note line item must have a VAT category ID.</assert>
  </rule>
  <rule context="$Credit_Note">
    <assert test="$EUGEN-T14-R007" flag="fatal">[EUGEN-T14-R007]-If the VAT total amount in a Credit Note exists it MUST contain the suppliers VAT number.</assert>
    <assert test="$EUGEN-T14-R015" flag="fatal">[EUGEN-T14-R015]-IF VAT = "AE" (reverse charge) THEN it MUST contain Supplier VAT id and Customer VAT</assert>
    <assert test="$EUGEN-T14-R016" flag="fatal">[EUGEN-T14-R016]-IF VAT = "AE" (reverse charge) THEN VAT MAY NOT contain other VAT categories.</assert>
    <assert test="$EUGEN-T14-R017" flag="fatal">[EUGEN-T14-R017]-IF VAT = "AE" (reverse charge) THEN The taxable amount MUST equal the invoice total without VAT amount.</assert>
    <assert test="$EUGEN-T14-R018" flag="fatal">[EUGEN-T14-R018]-IF VAT = "AE" (reverse charge) THEN VAT tax amount MUST be zero.</assert>
    <assert test="$EUGEN-T14-R024" flag="fatal">[EUGEN-T14-R024]-Currency Identifier MUST be in stated in the currency stated on header level.</assert>
  </rule>
  <rule context="$Credit_Note_Line">
    <assert test="$EUGEN-T14-R003" flag="warning">[EUGEN-T14-R003]-Each credit note line SHOULD contain the quantity and unit of measure</assert>
  </rule>
  <rule context="$Customer_Party">
    <assert test="$EUGEN-T14-R002" flag="warning">[EUGEN-T14-R002]-A customer postal address in a credit note SHOULD contain at least, street name and number, city name, zip code and country code.</assert>
  </rule>
  <rule context="$Invoice_Period">
    <assert test="$EUGEN-T14-R020" flag="fatal">[EUGEN-T14-R020]-If the credit note refers to a period, the period MUST have an start date.</assert>
    <assert test="$EUGEN-T14-R021" flag="fatal">[EUGEN-T14-R021]-If the credit note refers to a period, the period MUST have an end date.</assert>
  </rule>
  <rule context="$Supplier_Party">
    <assert test="$EUGEN-T14-R001" flag="warning">[EUGEN-T14-R001]-A supplier postal address in a credit note SHOULD contain at least, street name and number, city name, zip code and country code.</assert>
  </rule>
  <rule context="$Tax_Category">
    <assert test="$EUGEN-T14-R012" flag="fatal">[EUGEN-T14-R012]-For each tax subcategory the category ID and the applicable tax percentage MUST be provided.</assert>
  </rule>
  <rule context="$Tax_Subtotal">
    <assert test="$EUGEN-T14-R013" flag="warning">[EUGEN-T14-R013]-If the category for VAT is exempt (E) then an exemption reason SHOULD be provided.</assert>
  </rule>
  <rule context="$Total_Amounts">
    <assert test="$EUGEN-T14-R019" flag="fatal">[EUGEN-T14-R019]-Total payable amount in an invoice MUST NOT be negative</assert>
  </rule>
</pattern>
