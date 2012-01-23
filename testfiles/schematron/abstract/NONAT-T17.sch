<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T17 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="NONATT17">
  <rule context="$Customer_Party">
    <assert test="$NONAT-T17-R010" flag="fatal">[NONAT-T17-R010]-A customer postal address in a reminder document MUST contain at least, Street name, city name, zip code and country code.</assert>
    <assert test="$NONAT-T17-R024" flag="warning">[NONAT-T17-R024]-A customer number for AccountingCustomerParty SHOULD be provided.</assert>
    <assert test="$NONAT-T17-R027" flag="fatal">[NONAT-T17-R027]-The Norwegian legal registration ID for the customer MUST be provided.</assert>
    <assert test="$NONAT-T17-R028" flag="fatal">[NONAT-T17-R028]-A customer contact reference identifier MUST be provided. </assert>
  </rule>
  <rule context="$Reminder_Line">
    <assert test="$NONAT-T17-R006" flag="fatal">[NONAT-T17-R006]-Reminder lines MUST have a line identifier.</assert>
    <assert test="$NONAT-T17-R007" flag="fatal">[NONAT-T17-R007]-A reminder line MUST specify a reference, either to a previous invoice or to a previous credit note.</assert>
  </rule>
  <rule context="$Reminder_Profile">
    <assert test="$NONAT-T17-R016" flag="fatal">[NONAT-T17-R016]-An reminder transaction T17 must only be used in Profiles 8.</assert>
  </rule>
  <rule context="$Reminder">
    <assert test="$NONAT-T17-R001" flag="fatal">[NONAT-T17-R001]-A reminder MUST have a reminder number.</assert>
    <assert test="$NONAT-T17-R002" flag="fatal">[NONAT-T17-R002]-A reminder MUST have the date of issue.</assert>
    <assert test="$NONAT-T17-R003" flag="fatal">[NONAT-T17-R003]-A reminder MUST specify the sum of the line amounts.</assert>
    <assert test="$NONAT-T17-R004" flag="fatal">[NONAT-T17-R004]-A reminder MUST specify the total payable amount.</assert>
    <assert test="$NONAT-T17-R005" flag="fatal">[NONAT-T17-R005]-A reminder MUST specify at least one line item.</assert>
    <assert test="$NONAT-T17-R013" flag="fatal">[NONAT-T17-R013]-If payee information is provided then  the payee name MUST be specified.</assert>
    <assert test="$NONAT-T17-R014" flag="warning">[NONAT-T17-R014]-A reminder document with reverse charge VAT MAY NOT contain other VAT categories.</assert>
    <assert test="$NONAT-T17-R015" flag="fatal">[NONAT-T17-R015]-The tax amount for reverse charge VAT MUST be zero. (since there is only one VAT category allowed it follows that the invoice tax total for reverse charge invoices is zero)</assert>
    <assert test="$NONAT-T17-R017" flag="fatal">[NONAT-T17-R017]-A reminder MUST have a syntax identifier.</assert>
    <assert test="$NONAT-T17-R018" flag="fatal">[NONAT-T17-R018]-A reminder MUST have a customization identifier.</assert>
    <assert test="$NONAT-T17-R019" flag="fatal">[NONAT-T17-R019]-A reminder MUST have a profile identifier.</assert>
    <assert test="$NONAT-T17-R020" flag="fatal">[NONAT-T17-R020]-A reminder MUST contain the full name of the supplier.</assert>
    <assert test="$NONAT-T17-R025" flag="fatal">[NONAT-T17-R025]-A reminder MUST contain the full name of the customer.</assert>
  </rule>
  <rule context="$Supplier_Party">
    <assert test="$NONAT-T17-R009" flag="fatal">[NONAT-T17-R009]-A supplier postal address in a reminder document MUST contain at least, Street name, city name, zip code and country code.</assert>
    <assert test="$NONAT-T17-R022" flag="fatal">[NONAT-T17-R022]-Country code for the supplier address MUST be provided.</assert>
    <assert test="$NONAT-T17-R023" flag="fatal">[NONAT-T17-R023]-The Norwegian legal registration ID for the supplier MUST be provided.</assert>
  </rule>
  <rule context="$Tax_Subtotal">
    <assert test="$NONAT-T17-R012" flag="warning">[NONAT-T17-R012]-If the tax percentage in a tax category is 0% then an exemption reason SHOULD be provided except in reverse charge VAT.</assert>
  </rule>
  <rule context="$Tax_Total">
    <assert test="$NONAT-T17-R029" flag="fatal">[NONAT-T17-R029]-A reminder MUST specify the tax total amount.</assert>
  </rule>
  <rule context="$Total_Amounts">
    <assert test="$NONAT-T17-R008" flag="fatal">[NONAT-T17-R008]-Reminder total line extension amount MUST equal the sum of the line totals.</assert>
  </rule>
</pattern>
