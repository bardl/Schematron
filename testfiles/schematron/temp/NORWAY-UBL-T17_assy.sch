<?xml version="1.0" encoding="utf-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:ubl="urn:oasis:names:specification:ubl:schema:xsd:Reminder-2" queryBinding="xslt2">
  <title>Norsk purring til UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:Reminder-2"/>
  <phase id="NONATT17_phase">
    <active pattern="NONATUBL-T17"/>
  </phase>
  
  
  <!--Suppressed abstract pattern NONATT17 was here-->
  
  
  <!--Start pattern based on abstract NONATT17--><pattern id="NONATUBL-T17">
  <rule context="//cac:AccountingCustomerParty/cac:Party">
    <assert test="(cac:PostalAddress/cbc:StreetName and cac:PostalAddress/cbc:CityName and cac:PostalAddress/cbc:PostalZone and cac:PostalAddress/cac:Country/cbc:IdentificationCode)" flag="fatal">[NONAT-T17-R010]-A customer postal address in a reminder document MUST contain at least, Street name, city name, zip code and country code.</assert>
    <assert test="(cac:PartyIdentification/cbc:ID != '')" flag="warning">[NONAT-T17-R024]-A customer number for AccountingCustomerParty SHOULD be provided.</assert>
    <assert test="(cac:PartyLegalEntity/cbc:CompanyID != '')" flag="fatal">[NONAT-T17-R027]-The Norwegian legal registration ID for the customer MUST be provided.</assert>
    <assert test="(cac:Contact/cbc:ID != '')" flag="fatal">[NONAT-T17-R028]-A customer contact reference identifier MUST be provided. </assert>
  </rule>
  <rule context="//cac:ReminderLine">
    <assert test="(cbc:ID)" flag="fatal">[NONAT-T17-R006]-Reminder lines MUST have a line identifier.</assert>
    <assert test="(//cac:BillingReference/cac:InvoiceDocumentReference/cbc:ID) or (//cac:BillingReference/cac:CreditNoteDocumentReference/cbc:ID)" flag="fatal">[NONAT-T17-R007]-A reminder line MUST specify a reference, either to a previous invoice or to a previous credit note.</assert>
  </rule>
  <rule context="//cbc:ProfileID">
    <assert test=". = 'urn:www.cenbii.eu:profile:bii08:ver1.0'" flag="fatal">[NONAT-T17-R016]-An reminder transaction T17 must only be used in Profiles 8.</assert>
  </rule>
  <rule context="/ubl:Reminder">
    <assert test="(cbc:ID)" flag="fatal">[NONAT-T17-R001]-A reminder MUST have a reminder number.</assert>
    <assert test="(cbc:IssueDate)" flag="fatal">[NONAT-T17-R002]-A reminder MUST have the date of issue.</assert>
    <assert test="(cac:LegalMonetaryTotal/cbc:LineExtensionAmount)" flag="fatal">[NONAT-T17-R003]-A reminder MUST specify the sum of the line amounts.</assert>
    <assert test="(cac:LegalMonetaryTotal/cbc:PayableAmount)" flag="fatal">[NONAT-T17-R004]-A reminder MUST specify the total payable amount.</assert>
    <assert test="(cac:ReminderLine)" flag="fatal">[NONAT-T17-R005]-A reminder MUST specify at least one line item.</assert>
    <assert test="not(cac:PayeeParty) or (cac:PayeeParty/cac:PartyName/cbc:Name)" flag="fatal">[NONAT-T17-R013]-If payee information is provided then  the payee name MUST be specified.</assert>
    <assert test="(((//cac:TaxCategory/cbc:ID) = 'AE')  and not((//cac:TaxCategory/cbc:ID) != 'AE' )) or not((//cac:TaxCategory/cbc:ID) = 'AE') or not(//cac:TaxCategory)" flag="warning">[NONAT-T17-R014]-A reminder document with reverse charge VAT MAY NOT contain other VAT categories.</assert>
    <assert test="//cac:TaxTotal/cbc:TaxAmount = 0 and (//cac:TaxCategory/cbc:ID) = 'AE'  or not((//cac:TaxCategory/cbc:ID) = 'AE' )" flag="fatal">[NONAT-T17-R015]-The tax amount for reverse charge VAT MUST be zero. (since there is only one VAT category allowed it follows that the invoice tax total for reverse charge invoices is zero)</assert>
    <assert test="(cbc:UBLVersionID)" flag="fatal">[NONAT-T17-R017]-A reminder MUST have a syntax identifier.</assert>
    <assert test="(cbc:CustomizationID)" flag="fatal">[NONAT-T17-R018]-A reminder MUST have a customization identifier.</assert>
    <assert test="(cbc:ProfileID)" flag="fatal">[NONAT-T17-R019]-A reminder MUST have a profile identifier.</assert>
    <assert test="(cac:AccountingSupplierParty/cac:Party/cac:PartyName/cbc:Name)" flag="fatal">[NONAT-T17-R020]-A reminder MUST contain the full name of the supplier.</assert>
    <assert test="(cac:AccountingCustomerParty/cac:Party/cac:PartyName/cbc:Name)" flag="fatal">[NONAT-T17-R025]-A reminder MUST contain the full name of the customer.</assert>
  </rule>
  <rule context="//cac:AccountingSupplierParty/cac:Party">
    <assert test="(cac:PostalAddress/cbc:StreetName and cac:PostalAddress/cbc:CityName and cac:PostalAddress/cbc:PostalZone and cac:PostalAddress/cac:Country/cbc:IdentificationCode)" flag="fatal">[NONAT-T17-R009]-A supplier postal address in a reminder document MUST contain at least, Street name, city name, zip code and country code.</assert>
    <assert test="(cac:PostalAddress/cac:Country/cbc:IdentificationCode != '')" flag="fatal">[NONAT-T17-R022]-Country code for the supplier address MUST be provided.</assert>
    <assert test="(cac:PartyLegalEntity/cbc:CompanyID != '')" flag="fatal">[NONAT-T17-R023]-The Norwegian legal registration ID for the supplier MUST be provided.</assert>
  </rule>
  <rule context="//cac:TaxSubtotal">
    <assert test="(number(cac:TaxCategory/cbc:Percent) = 0 and (cac:TaxCategory/cbc:TaxExemptionReason or cac:TaxCategory/cbc:TaxExemptionReasonCode)) or  (number(cac:TaxCategory/cbc:Percent) !=0)" flag="warning">[NONAT-T17-R012]-If the tax percentage in a tax category is 0% then an exemption reason SHOULD be provided except in reverse charge VAT.</assert>
  </rule>
  <rule context="/ubl:Reminder/cac:TaxTotal">
    <assert test="(cbc:TaxAmount)" flag="fatal">[NONAT-T17-R029]-A reminder MUST specify the tax total amount.</assert>
  </rule>
  <rule context="//cac:LegalMonetaryTotal">
    <assert test="number(child::cbc:LineExtensionAmount) = number(round((sum(//cac:ReminderLine/cbc:DebitLineAmount) - sum(//cac:ReminderLine/cbc:CreditLineAmount)) * 100) div 100)" flag="fatal">[NONAT-T17-R008]-Reminder total line extension amount MUST equal the sum of the line totals.</assert>
  </rule>
</pattern>
</schema>