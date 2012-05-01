<?xml version="1.0" encoding="utf-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:ubl="urn:oasis:names:specification:ubl:schema:xsd:CreditNote-2" queryBinding="xslt2">
  <title>Norsk Kredit Nota binding til UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:CreditNote-2"/>
  <phase id="BIIPROFILET14_phase">
    <active pattern="BIIPROFILESUBL-T14"/>
  </phase>
  <phase id="BIIRULEST14_phase">
    <active pattern="BIIRULESUBL-T14"/>
  </phase>
  <phase id="EUGENT14_phase">
    <active pattern="EUGENUBL-T14"/>
  </phase>
  <phase id="NONATT14_phase">
    <active pattern="NONATUBL-T14"/>
  </phase>
  <phase id="BIIRULEScodelist_phase">
    <active pattern="BIIRULESCodesT14"/>
  </phase>
  <phase id="EUGENcodelist_phase">
    <active pattern="EUGENCodesT14"/>
  </phase>
  
  
  <!--Suppressed abstract pattern BIIPROFILEST14 was here-->
  <!--Suppressed abstract pattern BIIRULEST14 was here-->
  <!--Suppressed abstract pattern EUGENT14 was here-->
  <!--Suppressed abstract pattern NONATT14 was here-->
  
  
  <!--Start pattern based on abstract BIIPROFILEST14--><pattern id="BIIPROFILESUBL-T14">
  <rule context="//cbc:ProfileID">
    <assert test=". = 'urn:www.cenbii.eu:profile:bii05:ver1.0' or . = 'urn:www.cenbii.eu:profile:bii06:ver1.0' or . = 'urn:www.cenbii.eu:profile:bii07:ver1.0' or . = 'urn:www.cenbii.eu:profile:bii08:ver1.0' or . = 'urn:www.cenbii.eu:profile:bii13:ver1.0' or . = 'urn:www.cenbii.eu:profile:bii19:ver1.0'" flag="fatal">[BIIPROFILE-T14-R001]-An invoice transaction T14 must only be used in CEN BII Profiles 5, 6, 7, 8, 13 or 19.</assert>
  </rule>
</pattern>
  <!--Start pattern based on abstract BIIRULEST14--><pattern id="BIIRULESUBL-T14">
  <rule context="//cac:LegalMonetaryTotal">
    <assert test="number(cbc:LineExtensionAmount) = number(round(sum(//cac:CreditNoteLine/cbc:LineExtensionAmount)) * 10 * 10) div 100)" flag="fatal">[BIIRULE-T14-R011]-Credit note total line extension amount MUST equal the sum of the line totals</assert>
    <assert test="((cbc:ChargeTotalAmount) and (cbc:AllowanceTotalAmount) and (number(cbc:TaxExclusiveAmount) = (number(cbc:LineExtensionAmount) + number(cbc:ChargeTotalAmount) - number(cbc:AllowanceTotalAmount)))) or (not(cbc:ChargeTotalAmount) and (cbc:AllowanceTotalAmount) and (number(cbc:TaxExclusiveAmount) = number(cbc:LineExtensionAmount) - number(cbc:AllowanceTotalAmount))) or ((cbc:ChargeTotalAmount) and not(cbc:AllowanceTotalAmount) and (number(cbc:TaxExclusiveAmount) = number(cbc:LineExtensionAmount) + number(cbc:ChargeTotalAmount))) or (not(cbc:ChargeTotalAmount) and not(cbc:AllowanceTotalAmount) and (number(cbc:TaxExclusiveAmount) = number(cbc:LineExtensionAmount)))" flag="fatal">[BIIRULE-T14-R012]-A credit note tax exclusive amount MUST equal the sum of lines plus allowances and charges on header level.</assert>
    <assert test="((cbc:PayableRoundingAmount) and (number(cbc:TaxInclusiveAmount) = number(cbc:TaxExclusiveAmount) + number(round(sum(/ubl:Invoice/cac:TaxTotal/cbc:TaxAmount)  * 10 * 10) div 100) + number(cbc:PayableRoundingAmount))  or (number(cbc:TaxInclusiveAmount) = number(cbc:TaxExclusiveAmount) + number(round(sum(/ubl:Invoice/cac:TaxTotal/cbc:TaxAmount) * 10 * 10) div 100)))" flag="fatal">[BIIRULE-T14-R013]-A credit note tax inclusive amount MUST equal the tax exclusive amount plus all tax total amounts and the rounding amount.</assert>
    <assert test="number(cbc:TaxInclusiveAmount) &gt;= 0" flag="fatal">[BIIRULE-T14-R014]-Tax inclusive amount in a credit note MUST NOT be negative</assert>
    <assert test="(cbc:AllowanceTotalAmount) and cbc:AllowanceTotalAmount = (round(sum(preceding::cac:AllowanceCharge[cbc:ChargeIndicator=&#34;false&#34;]/cbc:Amount) * 10 * 10) div 100) or not(cbc:AllowanceTotalAmount)" flag="fatal">[BIIRULE-T14-R015]-If there is a total allowance it MUST be equal to the sum of allowances at document level</assert>
    <assert test="(cbc:ChargeTotalAmount) and cbc:ChargeTotalAmount = (round(sum(preceding::cac:AllowanceCharge[cbc:ChargeIndicator=&#34;true&#34;]/cbc:Amount)) * 10 *10) div 100) or not(cbc:ChargeTotalAmount)" flag="fatal">[BIIRULE-T14-R016]-If there is a total charges it MUST be equal to the sum of document level charges.</assert>
    <assert test="(cbc:PrepaidAmount) and (number(cbc:PayableAmount) = number(cbc:TaxInclusiveAmount - cbc:PrepaidAmount)) or cbc:PayableAmount = cbc:TaxInclusiveAmount" flag="fatal">[BIIRULE-T14-R017]-In a credit note, amount due is the tax inclusive amount minus what has been prepaid.</assert>
  </rule>
  <rule context="/ubl:CreditNote/cac:TaxTotal">
    <assert test="count(cac:TaxSubtotal)&gt;1 and (cac:TaxSubtotal[1]/cac:TaxCategory/cac:TaxScheme/cbc:ID) =(cac:TaxSubtotal[2]/cac:TaxCategory/cac:TaxScheme/cbc:ID) or count(cac:TaxSubtotal)&lt;=1" flag="fatal">[BIIRULE-T14-R009]-A credit note MUST have a tax total refering to a single tax scheme</assert>
    <assert test="number(cbc:TaxAmount) = number(round(sum(cac:TaxSubtotal/cbc:TaxAmount) * 10 * 10) div 100)" flag="fatal">[BIIRULE-T14-R010]-Each tax total MUST equal the sum of the subcategory amounts.</assert>
    <assert test="not(cac:TaxSubtotal) or (cac:TaxSubtotal/cbc:TaxableAmount)" flag="fatal">[BIIRULE-T14-R043]-A conformant CEN BII Credit Note core data model MUST specify the taxable amount per tax subtotal.</assert>
    <assert test="not(cac:TaxSubtotal) or (cac:TaxSubtotal/cbc:TaxAmount)" flag="fatal">[BIIRULE-T14-R044]-A conformant CEN BII Credit Note core data model MUST specify the tax amount per tax subtotal.</assert>
  </rule>
  <rule context="//cac:TaxScheme">
    <assert test="cbc:ID" flag="fatal">[BIIRULE-T14-R046]-Every tax scheme in CEN BII MUST be defined through an identifier.</assert>
  </rule>
  <rule context="//cac:TaxCategory">
    <assert test="cbc:ID" flag="fatal">[BIIRULE-T14-R045]-Every tax category in CEN BII MUST be defined through an identifier.</assert>
  </rule>
  <rule context="//cac:AccountingSupplierParty">
    <assert test="(cac:Party/cac:PostalAddress/cbc:CityName and cac:Party/cac:PostalAddress/cbc:PostalZone) or (cac:Party/cac:PostalAddress/cbc:ID)" flag="warning">[BIIRULE-T14-R002]-A supplier address in a credit note SHOULD contain at least the city name and a zip code or have an address identifier.</assert>
    <assert test="((cac:Party/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID='VAT']/cbc:CompanyID) and (cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) and (following::cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) and ((cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) = (following::cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) or ((cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) != (following::cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) and cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:ID='VAT' and starts-with(cac:Party/cac:PartyTaxScheme/cbc:CompanyID,cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode)))) or not((cac:Party/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID='VAT']/cbc:CompanyID)) or not((cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode)) or not((following::cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode))" flag="warning">[BIIRULE-T14-R003]-If the supplier tax identifier is provided and if supplier and customer country codes are provided and are not equal then supplier tax identifier must be prefixed with the supplier country code.</assert>
  </rule>
  <rule context="//cac:PartyLegalEntity">
    <assert test="(cbc:CompanyID)" flag="fatal">[BIIRULE-T14-R039]-Company identifier MUST be specified when describing a company legal entity.</assert>
  </rule>
  <rule context="//cac:Item_Price">
    <assert test="number(.) &gt;=0" flag="fatal">[BIIRULE-T14-R022]-Prices of items MUST be positive or zero</assert>
  </rule>
  <rule context="//cac:Item">
    <assert test="string-length(string(cbc:Name)) &lt;= 50" flag="warning">[BIIRULE-T14-R019]-Product names SHOULD NOT exceed 50 characters long</assert>
    <assert test="not((cac:StandardItemIdentification)) or (cac:StandardItemIdentification/cbc:ID/@schemeID)" flag="warning">[BIIRULE-T14-R020]-If standard identifiers are provided within an item description, an Scheme Identifier SHOULD be provided (e.g. GTIN)</assert>
    <assert test="not((cac:CommodityClassification)) or (cac:CommodityClassification/cbc:ItemClassificationCode/@listID)" flag="warning">[BIIRULE-T14-R021]-Classification codes within an item description SHOULD have a List Identifier attribute (e.g. CPV or UNSPSC)</assert>
  </rule>
  <rule context="//cac:InvoicePeriod">
    <assert test="(cbc:StartDate and cbc:EndDate) and not(number(translate(cbc:StartDate,'-','')) &gt; number(translate(cbc:EndDate,'-',''))) or number(translate(cbc:EndDate,'-','')) = number(translate(cbc:StartDate,'-',''))" flag="warning">[BIIRULE-T14-R001]-An invoice period end date SHOULD be later or equal to an invoice period start date</assert>
  </rule>
  <rule context="//cac:AccountingCustomerParty">
    <assert test="(cac:Party/cac:PostalAddress/cbc:CityName and cac:Party/cac:PostalAddress/cbc:PostalZone) or (cac:Party/cac:PostalAddress/cbc:ID)" flag="warning">[BIIRULE-T14-R004]-A customer address in a credit note SHOULD contain at least city and zip code or have an address identifier.</assert>
    <assert test="((cac:Party/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID='VAT']/cbc:CompanyID) and (cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) and (preceding::cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) and  ((cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) = (preceding::cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) or ((cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) != (preceding::cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) and cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:ID='VAT' and starts-with(cac:Party/cac:PartyTaxScheme/cbc:CompanyID,cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode)))) or not((cac:Party/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID='VAT']/cbc:CompanyID)) or not((cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode)) or not((preceding::cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode))" flag="warning">[BIIRULE-T14-R005]-If the customer tax identifier is provided and if supplier and customer country codes are provided and are not equal then customer tax identifier must be prefixed with the customer country code.</assert>
  </rule>
  <rule context="//cac:CreditNoteLine">
    <assert test="(cac:Item/cbc:Name)" flag="fatal">[BIIRULE-T14-R027]-Each credit note line MUST contain the product/service name</assert>
    <assert test="cbc:ID" flag="fatal">[BIIRULE-T14-R034]-Credit note lines MUST have a line identifier.</assert>
    <assert test="cbc:LineExtensionAmount" flag="fatal">[BIIRULE-T14-R050]-Credit note lines MUST have a line total amount.</assert>
  </rule>
  <rule context="/ubl:CreditNote">
    <assert test="(cbc:IssueDate)" flag="fatal">[BIIRULE-T14-R025]-A conformant CEN BII Credit Note core data model MUST have the date of issue.</assert>
    <assert test="(cbc:ID)" flag="fatal">[BIIRULE-T14-R026]-A conformant CEN BII Credit Note core data model MUST have a Credit Note number.</assert>
    <assert test="(cac:AccountingSupplierParty/cac:Party/cac:PartyName/cbc:Name)" flag="fatal">[BIIRULE-T14-R028]-An Credit Note MUST contain the full name of the supplier.</assert>
    <assert test="(cac:AccountingCustomerParty/cac:Party/cac:PartyName/cbc:Name)" flag="fatal">[BIIRULE-T14-R029]-An Credit Note MUST contain the full name of the customer.</assert>
    <assert test="((cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']/cbc:TaxAmount) and (number(round(sum(cac:TaxTotal//cac:TaxSubtotal/cbc:TaxableAmount) *10 *10  ) div 100 ) = number(cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount))) or not((cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']))" flag="fatal">[BIIRULE-T14-R030]-If the VAT total amount in a Credit Note exists then the sum of taxable amount in sub categories MUST equal the sum of Credit Note tax exclusive amount.</assert>
    <assert test="(cbc:UBLVersionID)" flag="fatal">[BIIRULE-T14-R031]-A conformant CEN BII Credit Note core data model MUST have a syntax identifier.</assert>
    <assert test="(cbc:CustomizationID)" flag="fatal">[BIIRULE-T14-R032]-A conformant CEN BII Credit Note core data model MUST have a customization identifier.</assert>
    <assert test="(cbc:ProfileID)" flag="fatal">[BIIRULE-T14-R033]-A conformant CEN BII Credit Note core data model MUST have a profile identifier.</assert>
    <assert test="(cac:CreditNoteLine)" flag="fatal">[BIIRULE-T14-R035]-A conformant CEN BII Credit Note core data model MUST specify at least one line item.</assert>
    <assert test="(cbc:DocumentCurrencyCode)" flag="fatal">[BIIRULE-T14-R036]-A conformant CEN BII Credit Note core data model MUST specify the currency code for the document.</assert>
    <assert test="(cac:LegalMonetaryTotal/cbc:PayableAmount)" flag="fatal">[BIIRULE-T14-R037]-A conformant CEN BII Credit Note core data model MUST specify the total payable amount.</assert>
    <assert test="(cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount)" flag="fatal">[BIIRULE-T14-R038]-A conformant CEN BII Credit Note core data model MUST specify the total amount with taxes included.</assert>
    <assert test="(cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount)" flag="fatal">[BIIRULE-T14-R040]-A conformant CEN BII Credit Note core data model MUST specify the total amount without taxes.</assert>
    <assert test="(cac:LegalMonetaryTotal/cbc:LineExtensionAmount)" flag="fatal">[BIIRULE-T14-R041]-A conformant CEN BII Credit Note core data model MUST specify the sum of the line amounts.</assert>
    <assert test="(cac:TaxTotal/cbc:TaxAmount)" flag="fatal">[BIIRULE-T14-R042]-A conformant CEN BII Credit Note core data model MUST specify the tax total amount.</assert>
    <assert test="(//cac:BillingReference/cac:InvoiceDocumentReference/cbc:ID) or (//cac:BillingReference/cac:CreditNoteDocumentReference/cbc:ID)" flag="fatal">[BIIRULE-T14-R047]-A conformant CEN BII Credit Note core data model MUST specify either or both of an invoice reference and a credit note reference.</assert>
  </rule>
  <rule context="//cac:AllowanceCharge[cbc:ChargeIndicator='false']/cbc:MultiplierFactorNumeric">
    <assert test="number(.) &gt;=0" flag="fatal">[BIIRULE-T14-R023]-An allowance percentage MUST NOT be negative.</assert>
  </rule>
  <rule context="//cac:AllowanceCharge[cbc:ChargeIndicator='false']">
    <assert test="(cbc:MultiplierFactorNumeric and cbc:BaseAmount) or (not(cbc:MultiplierFactorNumeric) and not(cbc:BaseAmount))" flag="warning">[BIIRULE-T14-R024]-In allowances, both or none of percentage and base amount SHOULD be provided</assert>
  </rule>
</pattern>
  <!--Start pattern based on abstract EUGENT14--><pattern id="EUGENUBL-T14">
  <rule context="//cac:TaxSubtotal">
    <assert test="(number(cac:TaxCategory/cbc:Percent) = 0 and (cac:TaxCategory/cbc:TaxExemptionReason or cac:TaxCategory/cbc:TaxExemptionReasonCode)) or  (number(cac:TaxCategory/cbc:Percent) !=0)" flag="warning">[EUGEN-T14-R013]-If the tax percentage in a tax category is 0% then an exemption reason SHOULD be provided.</assert>
  </rule>
  <rule context="//cac:TaxCategory">
    <assert test="(parent::cac:AllowanceCharge) or (cbc:ID and cbc:Percent) or (cbc:ID = 'AE')" flag="fatal">[EUGEN-T14-R012]-For each tax subcategory except in Reverse Charge VAT the category ID and the applicable tax percentage MUST be provided.</assert>
  </rule>
  <rule context="//cac:AccountingSupplierParty/cac:Party">
    <assert test="(cac:PostalAddress/cbc:StreetName and cac:PostalAddress/cbc:CityName and cac:PostalAddress/cbc:PostalZone and cac:PostalAddress/cac:Country/cbc:IdentificationCode)" flag="warning">[EUGEN-T14-R001]-A supplier postal address in a credit note SHOULD contain at least, street name and number, city name, zip code and country code.</assert>
  </rule>
  <rule context="//cac:AccountingCustomerParty/cac:Party">
    <assert test="(cac:PostalAddress/cbc:StreetName and cac:PostalAddress/cbc:CityName and cac:PostalAddress/cbc:PostalZone and cac:PostalAddress/cac:Country/cbc:IdentificationCode)" flag="warning">[EUGEN-T14-R002]-A customer postal address in a credit note SHOULD contain at least, street name and number, city name, zip code and country code.</assert>
  </rule>
  <rule context="//cac:CreditNoteLine">
    <assert test="(cbc:CreditedQuantity and cbc:CreditedQuantity/@unitCode)" flag="warning">[EUGEN-T14-R003]-Each credit note line SHOULD contain the quantity and unit of measure</assert>
  </rule>
  <rule context="/ubl:CreditNote">
    <assert test="((cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']/cbc:TaxAmount) and (cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cbc:CompanyID) or not((cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT'])))" flag="fatal">[EUGEN-T14-R007]-If the VAT total amount in a Credit Note exists it MUST contain the suppliers VAT number.</assert>
    <assert test="((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode != //cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) or (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode != //cac:Delivery/cac:DeliveryLocation/cac:Address/cac:Country/cbc:IdentificationCode)) and (//cac:TaxCategory/cbc:ID) = 'AE'  or not((//cac:TaxCategory/cbc:ID) = 'AE' )" flag="warning">[EUGEN-T14-R014]-An invoice with reverse charge VAT SHOULD have either a Customers country code or a Delivery address country code that is NOT EQUAL to the Suppliers address country code.</assert>
    <assert test="starts-with(//cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cbc:CompanyID,//cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) and (//cac:TaxCategory/cbc:ID) = 'AE'  or not((//cac:TaxCategory/cbc:ID) = 'AE' )" flag="fatal">[EUGEN-T14-R015]-An invoice with reverse charge VAT MUST contain customers VAT id prefixed the customers country code.</assert>
    <assert test="(((//cac:TaxCategory/cbc:ID) = 'AE') and not((//cac:TaxCategory/cbc:ID) != 'AE' )) or not((//cac:TaxCategory/cbc:ID) = 'AE') or not(//cac:TaxCategory)" flag="warning">[EUGEN-T14-R016]-An invoice with reverse charge VAT MAY NOT contain other VAT categories.</assert>
    <assert test="(//cbc:TaxExclusiveAmount = //cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cbc:ID='AE']/cbc:TaxableAmount) and (//cac:TaxCategory/cbc:ID) = 'AE'  or not((//cac:TaxCategory/cbc:ID) = 'AE' )" flag="fatal">[EUGEN-T14-R017]-The taxable amount for reverse charge tax category MUST equal the invoice taxable amount.</assert>
    <assert test="//cac:TaxTotal/cbc:TaxAmount = 0 and (//cac:TaxCategory/cbc:ID) = 'AE'  or not((//cac:TaxCategory/cbc:ID) = 'AE' )" flag="fatal">[EUGEN-T14-R018]-The tax amount for reverse charge VAT MUST be zero. (since there is only one VAT category allowed it follows that the invoice tax total for reverse charge invoices is zero)</assert>
  </rule>
  <rule context="//cac:Item/cac:ClassifiedTaxCategory">
    <assert test="(//cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']/cbc:TaxAmount and cbc:ID) or not((//cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']))" flag="fatal">[EUGEN-T14-R031]-If the VAT total amount in a Credit Note exists then each Credit Note line item must have a VAT category ID.</assert>
  </rule>
  <rule context="/ubl:CreditNote/cac:AllowanceCharge">
    <assert test="((//cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']/cbc:TaxAmount) and (cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT')) or not((//cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']))" flag="fatal">[EUGEN-T14-R004]-If the VAT total amount in a Credit Note exists then an Allowances Charges amount on document level MUST have tax category for VAT.</assert>
  </rule>
</pattern>
  <!--Start pattern based on abstract NONATT14--><pattern id="NONATUBL-T14">
  <rule context="//cac:AccountingSupplierParty/cac:Party">
    <assert test="(cac:PartyLegalEntity/cbc:CompanyID != '') and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" flag="fatal">[NONAT-T14-R001]-PartyLegalEntity for AccountingSupplierParty MUST be provided according to "FOR 2004-12-01 nr 1558 - § 5-1-1. Point 2"</assert>
    <assert test="(cac:PostalAddress/cbc:StreetName and cac:PostalAddress/cbc:CityName and cac:PostalAddress/cbc:PostalZone and cac:PostalAddress/cac:Country/cbc:IdentificationCode) and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" flag="fatal">[NONAT-T14-R003]-A supplier postal address in an invoice MUST contain at least, Street name and number, city name, zip code and country code.</assert>
  </rule>
  <rule context="//cac:AccountingCustomerParty/cac:Party">
    <assert test="(cac:PostalAddress/cbc:StreetName and cac:PostalAddress/cbc:CityName and cac:PostalAddress/cbc:PostalZone and cac:PostalAddress/cac:Country/cbc:IdentificationCode) and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" flag="fatal">[NONAT-T14-R004]-A customer postal address in an invoice MUST contain at least, Street name and number, city name, zip code and country code.</assert>
  </rule>
  <rule context="//cac:CreditNoteLine">
    <assert test="cbc:CreditedQuantity and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" flag="fatal">[NONAT-T14-R002]-Each credit note line MUST contain a quantity according to "FOR 2004-12-01 nr 1558 - § 5-1-1. Point 3" </assert>
  </rule>
</pattern>
  
  
  <pattern id="BIIRULESCodesT14">



<rule context="cbc:DocumentCurrencyCode" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' AED AFN ALL AMD ANG AOA ARS AUD AWG AZN BAM BBD BDT BGN BHD BIF BMD BND BOB BOV BRL BSD BTN BWP BYR BZD CAD CDF CHE CHF CHW CLF CLP CNY COP COU CRC CUP CVE CZK DJF DKK DOP DZD EEK EGP ERN ETB EUR FJD FKP GBP GEL GHS GIP GMD GNF GTQ GWP GYD HKD HNL HRK HTG HUF IDR ILS INR IQD IRR ISK JMD JOD JPY KES KGS KHR KMF KPW KRW KWD KYD KZT LAK LBP LKR LRD LSL LTL LVL LYD MAD MDL MGA MKD MMK MNT MOP MRO MUR MVR MWK MXN MXV MYR MZN NAD NGN NIO NOK NPR NZD OMR PAB PEN PGK PHP PKR PLN PYG QAR RON RSD RUB RWF SAR SBD SCR SDG SEK SGD SHP SKK SLL SOS SRD STD SVC SYP SZL THB TJS TMM TND TOP TRY TTD TWD TZS UAH UGX USD USN USS UYI UYU UZS VEF VND VUV WST XAF XAG XAU XBA XBB XBC XBD XCD XDR XFU XOF XPD XPF XTS XXX YER ZAR ZMK ZWR ZWD ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-014-001]-DocumentCurrencyCode MUST be coded using ISO code list 4217</assert>
</rule>

<rule context="@currencyID" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' AED AFN ALL AMD ANG AOA ARS AUD AWG AZN BAM BBD BDT BGN BHD BIF BMD BND BOB BOV BRL BSD BTN BWP BYR BZD CAD CDF CHE CHF CHW CLF CLP CNY COP COU CRC CUP CVE CZK DJF DKK DOP DZD EEK EGP ERN ETB EUR FJD FKP GBP GEL GHS GIP GMD GNF GTQ GWP GYD HKD HNL HRK HTG HUF IDR ILS INR IQD IRR ISK JMD JOD JPY KES KGS KHR KMF KPW KRW KWD KYD KZT LAK LBP LKR LRD LSL LTL LVL LYD MAD MDL MGA MKD MMK MNT MOP MRO MUR MVR MWK MXN MXV MYR MZN NAD NGN NIO NOK NPR NZD OMR PAB PEN PGK PHP PKR PLN PYG QAR RON RSD RUB RWF SAR SBD SCR SDG SEK SGD SHP SKK SLL SOS SRD STD SVC SYP SZL THB TJS TMM TND TOP TRY TTD TWD TZS UAH UGX USD USN USS UYI UYU UZS VEF VND VUV WST XAF XAG XAU XBA XBB XBC XBD XCD XDR XFU XOF XPD XPF XTS XXX YER ZAR ZMK ZWR ZWD ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-014-002]-currencyID MUST be coded using ISO code list 4217</assert>
</rule>

<rule context="cac:Country//cbc:IdentificationCode" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' AD AE AF AG AI AL AM AN AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BL BJ BM BN BO BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CR CU CV CX CY CZ DE DJ DK DM DO DZ EC EE EG EH ER ES ET FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU ID IE IL IM IN IO IQ IR IS IT JE JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MF MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NO NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR ST SV SY SZ TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM US UY UZ VA VC VE VG VI VN VU WF WS YE YT ZA ZM ZW ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-014-003]-Country codes in a credit note MUST be coded using ISO code list 3166-1</assert>
</rule>

<rule context="cac:TaxScheme//cbc:ID" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' AAA AAB AAC AAD AAE AAF AAG AAH AAI AAJ AAK AAL ADD BOL CAP CAR COC CST CUD CVD ENV EXC EXP FET FRE GCN GST ILL IMP IND LAC LCN LDP LOC LST MCA MCD OTH PDB PDC PRF SCN SSS STT SUP SUR SWT TAC TOT TOX TTA VAD VAT ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[CL-014-004]-Credit Note tax schemes MUST be coded using UN/ECE 5153 code list</assert>
</rule>

<rule context="cac:TaxCategory//cbc:ID" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' A AA AB AC AD AE B C E G H O S Z ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[CL-014-005]-Credit Note tax categories MUST be coded using UN/ECE 5305 code list</assert>
</rule>

</pattern>
  <pattern id="EUGENCodesT14">



<rule context="cac:FinancialInstitution/cbc:ID//@schemeID" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' BIC ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[PCL-014-002]-Financial Institution SHOULD ONLY be BIC code.</assert>
</rule>

<rule context="cac:PostalAddress/cbc:ID//@schemeID" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' GLN ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[PCL-014-003]-Postal address identifiers SHOULD ONLY be GLN.</assert>
</rule>

<rule context="cac:Delivery/cac:DeliveryLocation/cbc:ID//@schemeID" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' GLN ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[PCL-014-004]-Location identifiers SHOULD ONLY be GLN</assert>
</rule>

<rule context="cac:Item/cac:StandardItemIdentification/cbc:ID//@schemeID" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' GTIN ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[PCL-014-005]-Standard item identifiers SHOULD ONLY be GTIN.</assert>
</rule>

<rule context="cac:Item/cac:CommodityClassification/cbc:ItemClassificationCode//@listID" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' UNSPSC eCLASS CPV ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[PCL-014-006]-Commodity classification SHOULD ONLY be one of UNSPSC, eClass or CPV.</assert>
</rule>

</pattern>
</schema>