<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T17 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="NONATUBL-T17" is-a="NONATT17">
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
</pattern>
