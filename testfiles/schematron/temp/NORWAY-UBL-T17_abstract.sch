<?xml version="1.0" encoding="utf-8"?><!-- 

        	UBL syntax binding to the T17   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:ubl="urn:oasis:names:specification:ubl:schema:xsd:Reminder-2" queryBinding="xslt2">
  <title>Norsk purring til UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:Reminder-2"/>
  <phase id="NONATT17_phase">
    <active pattern="NONATUBL-T17"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/NONAT-T17.sch?><pattern abstract="true" id="NONATT17">
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
</pattern><?DSDL_INCLUDE_END abstract/NONAT-T17.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/NONAT-ubl-T17.sch?><pattern id="NONATUBL-T17" is-a="NONATT17">
  <param value="(cbc:ID)" name="NONAT-T17-R001"/>
  <param value="(cbc:IssueDate)" name="NONAT-T17-R002"/>
  <param value="(cac:LegalMonetaryTotal/cbc:LineExtensionAmount)" name="NONAT-T17-R003"/>
  <param value="(cac:LegalMonetaryTotal/cbc:PayableAmount)" name="NONAT-T17-R004"/>
  <param value="(cac:ReminderLine)" name="NONAT-T17-R005"/>
  <param value="(cbc:ID)" name="NONAT-T17-R006"/>
  <param value="(//cac:BillingReference/cac:InvoiceDocumentReference/cbc:ID) or (//cac:BillingReference/cac:CreditNoteDocumentReference/cbc:ID)" name="NONAT-T17-R007"/>
  <param value="number(child::cbc:LineExtensionAmount) = number(round((sum(//cac:ReminderLine/cbc:DebitLineAmount) - sum(//cac:ReminderLine/cbc:CreditLineAmount)) * 100) div 100)" name="NONAT-T17-R008"/>
  <param value="(cac:PostalAddress/cbc:StreetName and cac:PostalAddress/cbc:CityName and cac:PostalAddress/cbc:PostalZone and cac:PostalAddress/cac:Country/cbc:IdentificationCode)" name="NONAT-T17-R009"/>
  <param value="(cac:PostalAddress/cbc:StreetName and cac:PostalAddress/cbc:CityName and cac:PostalAddress/cbc:PostalZone and cac:PostalAddress/cac:Country/cbc:IdentificationCode)" name="NONAT-T17-R010"/>
  <param value="(number(cac:TaxCategory/cbc:Percent) = 0 and (cac:TaxCategory/cbc:TaxExemptionReason or cac:TaxCategory/cbc:TaxExemptionReasonCode)) or  (number(cac:TaxCategory/cbc:Percent) !=0)" name="NONAT-T17-R012"/>
  <param value="not(cac:PayeeParty) or (cac:PayeeParty/cac:PartyName/cbc:Name)" name="NONAT-T17-R013"/>
  <param value="(((//cac:TaxCategory/cbc:ID) = 'AE')  and not((//cac:TaxCategory/cbc:ID) != 'AE' )) or not((//cac:TaxCategory/cbc:ID) = 'AE') or not(//cac:TaxCategory)" name="NONAT-T17-R014"/>
  <param value="//cac:TaxTotal/cbc:TaxAmount = 0 and (//cac:TaxCategory/cbc:ID) = 'AE'  or not((//cac:TaxCategory/cbc:ID) = 'AE' )" name="NONAT-T17-R015"/>
  <param value=". = 'urn:www.cenbii.eu:profile:bii08:ver1.0'" name="NONAT-T17-R016"/>
  <param value="(cbc:UBLVersionID)" name="NONAT-T17-R017"/>
  <param value="(cbc:CustomizationID)" name="NONAT-T17-R018"/>
  <param value="(cbc:ProfileID)" name="NONAT-T17-R019"/>
  <param value="(cac:AccountingSupplierParty/cac:Party/cac:PartyName/cbc:Name)" name="NONAT-T17-R020"/>
  <param value="(cac:PostalAddress/cbc:CityName and cac:PostalAddress/cbc:PostalZone) or (cac:PostalAddress/cbc:ID)" name="NONAT-T17-R021"/>
  <param value="(cac:PostalAddress/cac:Country/cbc:IdentificationCode != '')" name="NONAT-T17-R022"/>
  <param value="(cac:PartyLegalEntity/cbc:CompanyID != '')" name="NONAT-T17-R023"/>
  <param value="(cac:PartyIdentification/cbc:ID != '')" name="NONAT-T17-R024"/>
  <param value="(cac:AccountingCustomerParty/cac:Party/cac:PartyName/cbc:Name)" name="NONAT-T17-R025"/>
  <param value="(cac:PostalAddress/cbc:CityName and cac:PostalAddress/cbc:PostalZone) or (cac:PostalAddress/cbc:ID)" name="NONAT-T17-R026"/>
  <param value="(cac:PartyLegalEntity/cbc:CompanyID != '')" name="NONAT-T17-R027"/>
  <param value="(cac:Contact/cbc:ID != '')" name="NONAT-T17-R028"/>
  <param value="(cbc:TaxAmount)" name="NONAT-T17-R029"/>
  <param value="/ubl:Reminder/cac:TaxTotal" name="Tax_Total"/>
  <param value="//cac:AccountingSupplierParty/cac:Party" name="Supplier_Party"/>
  <param value="//cac:AccountingCustomerParty/cac:Party" name="Customer_Party"/>
  <param value="//cac:TaxSubtotal" name="Tax_Subtotal"/>
  <param value="//cbc:ProfileID" name="Reminder_Profile"/>
  <param value="//cac:ReminderLine" name="Reminder_Line"/>
  <param value="//cac:LegalMonetaryTotal" name="Total_Amounts"/>
  <param value="/ubl:Reminder" name="Reminder"/>
</pattern><?DSDL_INCLUDE_END UBL/NONAT-ubl-T17.sch?>
</schema>