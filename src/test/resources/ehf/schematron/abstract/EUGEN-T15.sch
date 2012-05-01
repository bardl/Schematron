<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T15 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="EUGENT15">
  <rule context="$Total_Amounts">
    <assert test="$EUGEN-T15-R019" flag="fatal">[EUGEN-T15-R019]-Total payable amount in an invoice MUST NOT be negative</assert>
  </rule>
  <rule context="$Tax_Subtotal">
    <assert test="$EUGEN-T15-R009" flag="warning">[EUGEN-T15-R009]-If the category for VAT is exempt (E) then an exemption reason SHOULD be provided.</assert>
  </rule>
  <rule context="$Tax_Category">
    <assert test="$EUGEN-T15-R008" flag="fatal">[EUGEN-T15-R008]-For each tax subcategory the category ID and the applicable tax percentage MUST be provided.</assert>
  </rule>
  <rule context="$Supplier_Party">
    <assert test="$EUGEN-T15-R001" flag="warning">[EUGEN-T15-R001]-A supplier postal address in an invoice SHOULD contain at least, Street name and number, city name, zip code and country code.</assert>
  </rule>
  <rule context="$Payment_Means">
    <assert test="$EUGEN-T15-R004" flag="warning">[EUGEN-T15-R004]-If the payment means are international account transfer and the account id is IBAN then the financial institution should be identified by using the BIC id.</assert>
  </rule>
  <rule context="$Invoice_Period">
    <assert test="$EUGEN-T15-R020" flag="fatal">[EUGEN-T15-R020]-If the invoice refers to a period, the period MUST have an start date.</assert>
    <assert test="$EUGEN-T15-R021" flag="fatal">[EUGEN-T15-R021]-If the invoice refers to a period, the period MUST have an end date.</assert>
  </rule>
  <rule context="$Invoice_Line">
    <assert test="$EUGEN-T15-R003" flag="warning">[EUGEN-T15-R003]-Each invoice line SHOULD contain the quantity and unit of measure</assert>
  </rule>
  <rule context="$Invoice">
    <assert test="$EUGEN-T15-R007" flag="fatal">[EUGEN-T15-R007]-If the VAT total amount in an invoice exists it MUST contain the suppliers VAT number.</assert>
    <assert test="$EUGEN-T15-R010" flag="fatal">[EUGEN-T15-R010]-If payee information is provided then the payee name MUST be specified.</assert>
    <assert test="$EUGEN-T15-R015" flag="fatal">[EUGEN-T15-R015]-IF VAT = "AE" (reverse charge) THEN it MUST contain Supplier VAT id and Customer VAT</assert>
    <assert test="$EUGEN-T15-R016" flag="fatal">[EUGEN-T15-R016]-IF VAT = "AE" (reverse charge) THEN VAT MAY NOT contain other VAT categories.</assert>
    <assert test="$EUGEN-T15-R017" flag="fatal">[EUGEN-T15-R017]-IF VAT = "AE" (reverse charge) THEN The taxable amount MUST equal the invoice total without VAT amount.</assert>
    <assert test="$EUGEN-T15-R018" flag="fatal">[EUGEN-T15-R018]-IF VAT = "AE" (reverse charge) THEN VAT tax amount MUST be zero.</assert>
    <assert test="$EUGEN-T15-R024" flag="fatal">[EUGEN-T15-R024]-Currency Identifier MUST be in stated in the currency stated on header level.</assert>
  </rule>
  <rule context="$Delivery_Address">
    <assert test="$EUGEN-T15-R005" flag="warning">[EUGEN-T15-R005]-A Delivery address in an SHOULD contain at least, city, zip code and country code.</assert>
  </rule>
  <rule context="$Customer_Party">
    <assert test="$EUGEN-T15-R002" flag="warning">[EUGEN-T15-R002]-A customer postal address in an invoice SHOULD contain at least, Street name and number, city name, zip code and country code.</assert>
  </rule>
  <rule context="$Classified_Tax_Category">
    <assert test="$EUGEN-T15-R011" flag="fatal">[EUGEN-T15-R011]-If the VAT total amount in an invoice exists then each invoice line item must have a VAT category ID.</assert>
  </rule>
  <rule context="$Allowance_Charge">
    <assert test="$EUGEN-T15-R006" flag="fatal">[EUGEN-T15-R006]-If the VAT total amount in an invoice exists then an Allowances Charges amount on document level MUST have Tax category for VAT.</assert>
    <assert test="$EUGEN-T15-R022" flag="fatal">[EUGEN-T15-R022]-An allowance or charge amount MUST NOT be negative.</assert>
    <assert test="$EUGEN-T15-R023" flag="warning">[EUGEN-T15-R023]-AllowanceChargeReason text SHOULD be specified for all allowances and charges</assert>
    <assert test="$EUGEN-T15-R012" flag="fatal">[EUGEN-T15-R012]-An allowance percentage MUST NOT be negative.</assert>
    <assert test="$EUGEN-T15-R013" flag="warning">[EUGEN-T15-R013]-In allowances, both or none of percentage and base amount SHOULD be provided</assert>
  </rule>
</pattern>
