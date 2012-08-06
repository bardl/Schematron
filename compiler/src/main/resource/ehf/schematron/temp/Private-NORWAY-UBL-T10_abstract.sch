<?xml version="1.0" encoding="utf-8"?><!-- 

        	UBL syntax binding to the T10   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:ubl="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" queryBinding="xslt2">
  <title>Norsk faktura binding til UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2"/>
  <phase id="BIIPROFILET10_phase">
    <active pattern="BIIPROFILESUBL-T10"/>
  </phase>
  <phase id="BIIRULEST10_phase">
    <active pattern="BIIRULESUBL-T10"/>
  </phase>
  <phase id="EUGENT10_phase">
    <active pattern="EUGENUBL-T10"/>
  </phase>
  <phase id="NONATT10_phase">
    <active pattern="NONATUBL-T10"/>
  </phase>
  <phase id="BIIRULEScodelist_phase">
    <active pattern="BIIRULESCodesT10"/>
  </phase>
  <phase id="EUGENcodelist_phase">
    <active pattern="EUGENCodesT10"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIPROFILES-T10.sch?><pattern abstract="true" id="BIIPROFILEST10">
  <rule context="$Invoice_Profile">
    <assert test="$BIIPROFILE-T10-R001" flag="fatal">[BIIPROFILE-T10-R001]-An invoice transaction T10 must only be used in Profiles 4, 5 or 6.</assert>
  </rule>
  <rule context="$Invoice">
    <assert test="$BIIPROFILE-T10-R002" flag="fatal">[BIIPROFILE-T10-R002]-An invoice transaction T10 in Profile 6 MUST have an order reference identifier.</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIPROFILES-T10.sch?>
  <?DSDL_INCLUDE_START abstract/BIIRULES-T10.sch?><pattern abstract="true" id="BIIRULEST10">
  <rule context="$Invoice_Period">
    <assert test="$BIIRULE-T10-R001" flag="warning">[BIIRULE-T10-R001]-An invoice period end date SHOULD be later or equal to an invoice period start date</assert>
  </rule>
  <rule context="$Supplier">
    <assert test="$BIIRULE-T10-R002" flag="warning">[BIIRULE-T10-R002]-A supplier address in an invoice SHOULD contain at least the city name and a zip code or have an address identifier.</assert>
    <assert test="$BIIRULE-T10-R003" flag="warning">[BIIRULE-T10-R003]-If the supplier tax identifier is provided and if supplier and customer country codes are provided and are not equal then supplier tax identifier must be prefixed with the supplier country code.</assert>
  </rule>
  <rule context="$Customer">
    <assert test="$BIIRULE-T10-R004" flag="warning">[BIIRULE-T10-R004]-A customer address in an invoice SHOULD contain at least city and zip code or have an address identifier.</assert>
    <assert test="$BIIRULE-T10-R005" flag="warning">[BIIRULE-T10-R005]-If the customer tax identifier is provided and if supplier and customer country codes are provided and are not equal then customer tax identifier must be prefixed with the customer country code.</assert>
  </rule>
  <rule context="$Payment_Means">
    <assert test="$BIIRULE-T10-R006" flag="warning">[BIIRULE-T10-R006]-Payment means due date in an invoice SHOULD be later or equal than issue date.</assert>
    <assert test="$BIIRULE-T10-R007" flag="warning">[BIIRULE-T10-R007]-If payment means is funds transfer, invoice MUST have a financial account</assert>
    <assert test="$BIIRULE-T10-R008" flag="warning">[BIIRULE-T10-R008]-If bank account is IBAN the bank identifierSHOULD also be provided.</assert>
  </rule>
  <rule context="$Tax_Total">
    <assert test="$BIIRULE-T10-R009" flag="fatal">[BIIRULE-T10-R009]-An invoice MUST have a tax total refering to a single tax scheme</assert>
    <assert test="$BIIRULE-T10-R010" flag="fatal">[BIIRULE-T10-R010]-Each tax total MUST equal the sum of the subcategory amounts.</assert>
  </rule>
  <rule context="$Total_Amounts">
    <assert test="$BIIRULE-T10-R011" flag="fatal">[BIIRULE-T10-R011]-Invoice total line extension amount MUST equal the sum of the line totals</assert>
    <assert test="$BIIRULE-T10-R012" flag="fatal">[BIIRULE-T10-R012]-An invoice tax exclusive amount MUST equal the sum of lines plus allowances and charges on header level.</assert>
    <assert test="$BIIRULE-T10-R013" flag="fatal">[BIIRULE-T10-R013]-An invoice tax inclusive amount MUST equal the tax exclusive amount plus all tax total amounts and the rounding amount.</assert>
    <assert test="$BIIRULE-T10-R014" flag="fatal">[BIIRULE-T10-R014]-Tax inclusive amount in an invoice MUST NOT be negative</assert>
    <assert test="$BIIRULE-T10-R015" flag="fatal">[BIIRULE-T10-R015]-If there is a total allowance it MUST be equal to the sum of allowances at document level</assert>
    <assert test="$BIIRULE-T10-R016" flag="fatal">[BIIRULE-T10-R016]-If there is a total charges it MUST be equal to the sum of document level charges.</assert>
    <assert test="$BIIRULE-T10-R017" flag="fatal">[BIIRULE-T10-R017]-In an invoice, amount due is the tax inclusive amount minus what has been prepaid.</assert>
  </rule>
  <rule context="$Invoice_Line">
    <assert test="$BIIRULE-T10-R018" flag="fatal">[BIIRULE-T10-R018]-Invoice line amount MUST be equal to the price amount multiplied by the quantity plus charges minus allowances at line level</assert>
  </rule>
  <rule context="$Item">
    <assert test="$BIIRULE-T10-R019" flag="warning">[BIIRULE-T10-R019]-Product names SHOULD NOT exceed 50 characters long</assert>
    <assert test="$BIIRULE-T10-R020" flag="warning">[BIIRULE-T10-R020]-If standard identifiers are provided within an item description, an Scheme Identifier SHOULD be provided (e.g. GTIN)</assert>
    <assert test="$BIIRULE-T10-R021" flag="warning">[BIIRULE-T10-R021]-Classification codes within an item description SHOULD have a List Identifier attribute (e.g. CPV or UNSPSC)</assert>
  </rule>
  <rule context="$Item_Price">
    <assert test="$BIIRULE-T10-R022" flag="fatal">[BIIRULE-T10-R022]-Prices of items MUST NOT be negative.</assert>
  </rule>
  <rule context="$Invoice">
    <assert test="$BIIRULE-T10-R023" flag="fatal">[BIIRULE-T10-R023]-A conformant CEN BII invoice core data model MUST have the date of issue.</assert>
    <assert test="$BIIRULE-T10-R024" flag="fatal">[BIIRULE-T10-R024]-A conformant CEN BII invoice core data model MUST have an invoice number.</assert>
  </rule>
  <rule context="$Invoice_Line">
    <assert test="$BIIRULE-T10-R025" flag="fatal">[BIIRULE-T10-R025]-Each invoice line MUST contain the product/service name</assert>
  </rule>
  <rule context="$Invoice">
    <assert test="$BIIRULE-T10-R026" flag="fatal">[BIIRULE-T10-R026]-An invoice MUST contain the full name of the supplier.</assert>
    <assert test="$BIIRULE-T10-R027" flag="fatal">[BIIRULE-T10-R027]-An invoice MUST contain the full name of the customer.</assert>
    <assert test="$BIIRULE-T10-R028" flag="fatal">[BIIRULE-T10-R028]-If the VAT total amount in an invoice exists then the sum of taxable amount in sub categories MUST equal the sum of invoice tax exclusive amount.</assert>
    <assert test="$BIIRULE-T10-R029" flag="fatal">[BIIRULE-T10-R029]-A conformant CEN BII invoice core data model MUST have a syntax identifier.</assert>
    <assert test="$BIIRULE-T10-R030" flag="fatal">[BIIRULE-T10-R030]-A conformant CEN BII invoice core data model MUST have a customization identifier.</assert>
    <assert test="$BIIRULE-T10-R031" flag="fatal">[BIIRULE-T10-R031]-A conformant CEN BII invoice core data model MUST have a profile identifier.</assert>
  </rule>
  <rule context="$Invoice_Line">
    <assert test="$BIIRULE-T10-R032" flag="fatal">[BIIRULE-T10-R032]-Invoice lines MUST have a line identifier.</assert>
  </rule>
  <rule context="$Invoice">
    <assert test="$BIIRULE-T10-R033" flag="fatal">[BIIRULE-T10-R033]-A conformant CEN BII invoice core data model MUST specify at least one line item.</assert>
    <assert test="$BIIRULE-T10-R034" flag="fatal">[BIIRULE-T10-R034]-A conformant CEN BII invoice core data model MUST specify the currency code for the document.</assert>
    <assert test="$BIIRULE-T10-R035" flag="fatal">[BIIRULE-T10-R035]-If the invoice refers an order, a conformant CEN BII invoice core data model MUST specify the order identifier.</assert>
    <assert test="$BIIRULE-T10-R036" flag="fatal">[BIIRULE-T10-R036]-If the invoice refers a contract, a conformant CEN BII invoice core data model MUST specify the contract identifier.</assert>
  </rule>
  <rule context="$Annex">
    <assert test="$BIIRULE-T10-R037" flag="fatal">[BIIRULE-T10-R037]-For any document referred in an invoice, a conformant CEN BII invoice core data model MUST specify the document identifier.</assert>
  </rule>
  <rule context="$Invoice">
    <assert test="$BIIRULE-T10-R038" flag="fatal">[BIIRULE-T10-R038]-A conformant CEN BII invoice core data model MUST specify the total payable amount.</assert>
    <assert test="$BIIRULE-T10-R039" flag="fatal">[BIIRULE-T10-R039]-A conformant CEN BII invoice core data model MUST specify the total amount with taxes included.</assert>
  </rule>
  <rule context="$Country">
    <assert test="$BIIRULE-T10-R040" flag="fatal">[BIIRULE-T10-R040]-Country in an address MUST be specified using the country code.</assert>
  </rule>
  <rule context="$Party_Legal_Entity">
    <assert test="$BIIRULE-T10-R041" flag="fatal">[BIIRULE-T10-R041]-Company identifier MUST be specified when describing a company legal entity.</assert>
  </rule>
  <rule context="$Invoice">
    <assert test="$BIIRULE-T10-R042" flag="fatal">[BIIRULE-T10-R042]-A conformant CEN BII invoice core data model MUST specify the total amount without taxes.</assert>
    <assert test="$BIIRULE-T10-R043" flag="fatal">[BIIRULE-T10-R043]-A conformant CEN BII invoice core data model MUST specify the sum of the line amounts.</assert>
  </rule>
  <rule context="$Payment_Means">
    <assert test="$BIIRULE-T10-R044" flag="fatal">[BIIRULE-T10-R044]-When specifying payment means, a conformant CEN BII invoice core data model MUST specify the payment means coded.</assert>
  </rule>
  <rule context="$Invoice">
    <assert test="$BIIRULE-T10-R045" flag="fatal">[BIIRULE-T10-R045]-A conformant CEN BII invoice core data model MUST specify the tax total amount.</assert>
  </rule>
  <rule context="$Tax_Total">
    <assert test="$BIIRULE-T10-R046" flag="fatal">[BIIRULE-T10-R046]-A conformant CEN BII invoice core data model MUST specify the taxable amount per tax subtotal.</assert>
    <assert test="$BIIRULE-T10-R047" flag="fatal">[BIIRULE-T10-R047]-A conformant CEN BII invoice core data model MUST specify the tax amount per tax subtotal.</assert>
  </rule>
  <rule context="$Tax_Category">
    <assert test="$BIIRULE-T10-R048" flag="fatal">[BIIRULE-T10-R048]-Every tax category in CEN BII MUST be defined through an identifier.</assert>
  </rule>
  <rule context="$Tax_Scheme">
    <assert test="$BIIRULE-T10-R049" flag="fatal">[BIIRULE-T10-R049]-Every tax scheme in CEN BII MUST be defined through an identifier.</assert>
  </rule>
  <rule context="$Invoice_Line">
    <assert test="$BIIRULE-T10-R050" flag="fatal">[BIIRULE-T10-R050]-Invoice lines MUST have a line total amount.</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T10.sch?>
  <?DSDL_INCLUDE_START abstract/EUGEN-T10.sch?><pattern abstract="true" id="EUGENT10">
  <rule context="$Tax_Subtotal">
    <assert test="$EUGEN-T10-R009" flag="warning">[EUGEN-T10-R009]-If the tax percentage in a tax category is 0% then an exemption reason SHOULD be provided except in reverse charge VAT.</assert>
  </rule>
  <rule context="$Tax_Category">
    <assert test="$EUGEN-T10-R008" flag="fatal">[EUGEN-T10-R008]-For each tax subcategory except in Reverse Charge VAT the category ID and the applicable tax percentage MUST be provided.</assert>
  </rule>
  <rule context="$Supplier_Party">
    <assert test="$EUGEN-T10-R001" flag="warning">[EUGEN-T10-R001]-A supplier postal address in an invoice SHOULD contain at least, Street name and number, city name, zip code and country code.</assert>
  </rule>
  <rule context="$Payment_Means">
    <assert test="$EUGEN-T10-R004" flag="warning">[EUGEN-T10-R004]-If the payment means are international account transfer and the account id is IBAN then the financial institution should be identified by using the BIC id.</assert>
  </rule>
  <rule context="$Invoice_Line">
    <assert test="$EUGEN-T10-R003" flag="warning">[EUGEN-T10-R003]-Each invoice line SHOULD contain the quantity and unit of measure</assert>
  </rule>
  <rule context="$Invoice">
    <assert test="$EUGEN-T10-R007" flag="fatal">[EUGEN-T10-R007]-If the VAT total amount in an invoice exists it MUST contain the suppliers VAT number.</assert>
    <assert test="$EUGEN-T10-R010" flag="fatal">[EUGEN-T10-R010]-If payee information is provided then  the payee name MUST be specified.</assert>
    <assert test="$EUGEN-T10-R014" flag="warning">[EUGEN-T10-R014]-An invoice with reverse charge VAT SHOULD have either a Customers country code or a Delivery address country code that is NOT EQUAL to the Suppliers address country code.</assert>
    <assert test="$EUGEN-T10-R015" flag="fatal">[EUGEN-T10-R015]-An invoice with reverse charge VAT MUST contain customers VAT id prefixed the customers country code.</assert>
    <assert test="$EUGEN-T10-R016" flag="warning">[EUGEN-T10-R016]-An invoice with reverse charge VAT MAY NOT contain other VAT categories.</assert>
    <assert test="$EUGEN-T10-R017" flag="fatal">[EUGEN-T10-R017]-The taxable amount for reverse charge tax category MUST equal the invoice taxable amount.</assert>
    <assert test="$EUGEN-T10-R018" flag="fatal">[EUGEN-T10-R018]-The tax amount for reverse charge VAT MUST be zero. (since there is only one VAT category allowed it follows that the invoice tax total for reverse charge invoices is zero)</assert>
  </rule>
  <rule context="$Delivery_Address">
    <assert test="$EUGEN-T10-R005" flag="warning">[EUGEN-T10-R005]-A Delivery address in an invoice SHOULD contain at least, city, zip code and country code.</assert>
  </rule>
  <rule context="$Customer_Party">
    <assert test="$EUGEN-T10-R002" flag="warning">[EUGEN-T10-R002]-A customer postal address in an invoice SHOULD contain at least, Street name and number, city name, zip code and country code.</assert>
  </rule>
  <rule context="$Classified_Tax_Category">
    <assert test="$EUGEN-T10-R011" flag="fatal">[EUGEN-T10-R011]-If the VAT total amount in an invoice exists then each invoice line item must have a VAT category ID.</assert>
  </rule>
  <rule context="$Allowance_Percentage">
    <assert test="$EUGEN-T10-R012" flag="fatal">[EUGEN-T10-R012]-An allowance percentage MUST NOT be negative.</assert>
  </rule>
  <rule context="$Allowance_Charge">
    <assert test="$EUGEN-T10-R006" flag="fatal">[EUGEN-T10-R006]-If the VAT total amount in an invoice exists then an Allowances Charges amount on document level MUST have Tax category for VAT.</assert>
  </rule>
  <rule context="$Allowance">
    <assert test="$EUGEN-T10-R013" flag="warning">[EUGEN-T10-R013]-In allowances, both or none of percentage and base amount SHOULD be provided</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/EUGEN-T10.sch?>
  <?DSDL_INCLUDE_START abstract/NONAT-T10.sch?><pattern abstract="true" id="NONATT10">
  <rule context="$Supplier_Party">
    <assert test="$NONAT-T10-R001" flag="fatal">[NONAT-T10-R001]-The Norwegian legal registration ID for the supplier MUST be provided according to "FOR 2004-12-01 nr 1558 - § 5-1-1. Point 2"</assert>
    <assert test="$NONAT-T10-R006" flag="fatal">[NONAT-T10-R006]-A supplier postal address in an invoice MUST contain at least, Street name and number, city name, zip code and country code.</assert>
  </rule>
  <rule context="$Invoice_Line">
    <assert test="$NONAT-T10-R005" flag="fatal">[NONAT-T10-R005]-Each invoice line MUST contain a quantity according to "FOR 2004-12-01 nr 1558 - § 5-1-1. Point 3" </assert>
  </rule>
  <rule context="$Invoice">
    <assert test="$NONAT-T10-R002" flag="fatal">[NONAT-T10-R002]-Payment due date MUST be provided in the invoice according to "FOR 2004-12-01 nr 1558 - § 5-1-1. Point 5" </assert>
    <assert test="$NONAT-T10-R003" flag="fatal">[NONAT-T10-R003]-The actual delivery date  MUST be provided in the invoice according to "FOR 2004-12-01 nr 1558 - § 5-1-1. Point 4" </assert>
    <assert test="$NONAT-T10-R004" flag="fatal">[NONAT-T10-R004]-The delivery address MUST be provided in the invoice according to "FOR 2004-12-01 nr 1558 - § 5-1-1. Point 4" </assert>
  </rule>
  <rule context="$Customer_Party">
    <assert test="$NONAT-T10-R007" flag="fatal">[NONAT-T10-R007]-A customer postal address in an invoice MUST contain at least, Street name and number, city name, zip code and country code.</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/NONAT-T10.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/BIIPROFILES-UBL-T10.sch?><pattern id="BIIPROFILESUBL-T10" is-a="BIIPROFILEST10">
  <param value=". = 'urn:www.cenbii.eu:profile:bii04:ver1.0' or . = 'urn:www.cenbii.eu:profile:bii05:ver1.0' or . = 'urn:www.cenbii.eu:profile:bii06:ver1.0'" name="BIIPROFILE-T10-R001"/>
  <param value="//cbc:ProfileID" name="Invoice_Profile"/>
  <param value="local-name(/*) = 'Invoice' and (//cac:OrderReference/cbc:ID) and //cbc:ProfileID = 'urn:www.cenbii.eu:profile:bii06:ver1.0' or not(//cbc:ProfileID = 'urn:www.cenbii.eu:profile:bii06:ver1.0')" name="BIIPROFILE-T10-R002"/>
  <param value="/ubl:Invoice" name="Invoice"/>
</pattern><?DSDL_INCLUDE_END UBL/BIIPROFILES-UBL-T10.sch?>
  <?DSDL_INCLUDE_START UBL/BIIRULES-UBL-T10.sch?><pattern id="BIIRULESUBL-T10" is-a="BIIRULEST10">
  <param value="(cbc:StartDate and cbc:EndDate) and not(number(translate(cbc:StartDate,'-','')) &gt; number(translate(cbc:EndDate,'-',''))) or number(translate(cbc:EndDate,'-','')) = number(translate(cbc:StartDate,'-',''))" name="BIIRULE-T10-R001"/>
  <param value="(cac:Party/cac:PostalAddress/cbc:CityName and cac:Party/cac:PostalAddress/cbc:PostalZone) or (cac:Party/cac:PostalAddress/cbc:ID)" name="BIIRULE-T10-R002"/>
  <param value="((cac:Party/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID='VAT']/cbc:CompanyID) and (cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) and (following::cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) and ((cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) = (following::cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) or ((cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) != (following::cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) and cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:ID='VAT' and starts-with(cac:Party/cac:PartyTaxScheme/cbc:CompanyID,cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode)))) or not((cac:Party/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID='VAT']/cbc:CompanyID)) or not((cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode)) or not((following::cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode))" name="BIIRULE-T10-R003"/>
  <param value="(cac:Party/cac:PostalAddress/cbc:CityName and cac:Party/cac:PostalAddress/cbc:PostalZone) or (cac:Party/cac:PostalAddress/cbc:ID)" name="BIIRULE-T10-R004"/>
  <param value="((cac:Party/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID='VAT']/cbc:CompanyID) and (cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) and (preceding::cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) and  ((cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) = (preceding::cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) or ((cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) != (preceding::cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) and cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:ID='VAT' and starts-with(cac:Party/cac:PartyTaxScheme/cbc:CompanyID,cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode)))) or not((cac:Party/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID='VAT']/cbc:CompanyID)) or not((cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode)) or not((preceding::cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode))" name="BIIRULE-T10-R005"/>
  <param value="(cbc:PaymentDueDate and /ubl:Invoice/cbc:IssueDate) and (number(translate(cbc:PaymentDueDate,'-','')) &gt;= number(translate(/ubl:Invoice/cbc:IssueDate,'-',''))) or (not(cbc:PaymentDueDate))" name="BIIRULE-T10-R006"/>
  <param value="(cbc:PaymentMeansCode = '31') and //cac:PayeeFinancialAccount/cbc:ID or (cbc:PaymentMeansCode != '31')" name="BIIRULE-T10-R007"/>
  <param value="(cac:PayeeFinancialAccount/cbc:ID/@schemeID and (cac:PayeeFinancialAccount/cbc:ID/@schemeID = 'IBAN') and cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cac:FinancialInstitution/cbc:ID) or (cac:PayeeFinancialAccount/cbc:ID/@schemeID != 'IBAN') or (not(cac:PayeeFinancialAccount/cbc:ID/@schemeID))" name="BIIRULE-T10-R008"/>
  <param value="count(cac:TaxSubtotal)&gt;1 and (cac:TaxSubtotal[1]/cac:TaxCategory/cac:TaxScheme/cbc:ID) =(cac:TaxSubtotal[2]/cac:TaxCategory/cac:TaxScheme/cbc:ID) or count(cac:TaxSubtotal)&lt;=1" name="BIIRULE-T10-R009"/>
  <param value="number(cbc:TaxAmount) = number(round(sum(cac:TaxSubtotal/cbc:TaxAmount) * 10 * 10) div 100)" name="BIIRULE-T10-R010"/>
  <param value="number(cbc:LineExtensionAmount) = number(round(sum(//cac:InvoiceLine/cbc:LineExtensionAmount) * 10 * 10) div 100)" name="BIIRULE-T10-R011"/>
  <param value="((cbc:ChargeTotalAmount) and (cbc:AllowanceTotalAmount) and (number(cbc:TaxExclusiveAmount) = (number(cbc:LineExtensionAmount) + number(cbc:ChargeTotalAmount) - number(cbc:AllowanceTotalAmount)))) or (not(cbc:ChargeTotalAmount) and (cbc:AllowanceTotalAmount) and (number(cbc:TaxExclusiveAmount) = number(cbc:LineExtensionAmount) - number(cbc:AllowanceTotalAmount))) or ((cbc:ChargeTotalAmount) and not(cbc:AllowanceTotalAmount) and (number(cbc:TaxExclusiveAmount) = number(cbc:LineExtensionAmount) + number(cbc:ChargeTotalAmount))) or (not(cbc:ChargeTotalAmount) and not(cbc:AllowanceTotalAmount) and (number(cbc:TaxExclusiveAmount) = number(cbc:LineExtensionAmount)))" name="BIIRULE-T10-R012"/>
  <param value="((cbc:PayableRoundingAmount) and (number(cbc:TaxInclusiveAmount) = number(cbc:TaxExclusiveAmount) + number(round(sum(/ubl:Invoice/cac:TaxTotal/cbc:TaxAmount) * 10 * 10) div 100) + number(cbc:PayableRoundingAmount))  or (number(cbc:TaxInclusiveAmount) = number(cbc:TaxExclusiveAmount) + number(round(sum(/ubl:Invoice/cac:TaxTotal/cbc:TaxAmount) * 10 * 10) div 100)))" name="BIIRULE-T10-R013"/>
  <param value="number(cbc:TaxInclusiveAmount) &gt;= 0" name="BIIRULE-T10-R014"/>
  <param value="(cbc:AllowanceTotalAmount) and cbc:AllowanceTotalAmount = (round(sum(/ubl:Invoice/cac:AllowanceCharge[cbc:ChargeIndicator=&#34;false&#34;]/cbc:Amount) * 10 * 10) div 100) or not(cbc:AllowanceTotalAmount)" name="BIIRULE-T10-R015"/>
  <param value="(cbc:ChargeTotalAmount) and cbc:ChargeTotalAmount = (round(sum(/ubl:Invoice/cac:AllowanceCharge[cbc:ChargeIndicator=&#34;true&#34;]/cbc:Amount) * 10 * 10) div 100) or not(cbc:ChargeTotalAmount)" name="BIIRULE-T10-R016"/>
  <param value="(cbc:PrepaidAmount) and (number(cbc:PayableAmount) = number(cbc:TaxInclusiveAmount - cbc:PrepaidAmount)) or cbc:PayableAmount = cbc:TaxInclusiveAmount" name="BIIRULE-T10-R017"/>
  <param value="not(cbc:InvoicedQuantity) or not(cac:Price/cbc:PriceAmount) or (not(cac:Price/cbc:BaseQuantity) and  number(cbc:LineExtensionAmount) = (round(number(cac:Price/cbc:PriceAmount) *number(cbc:InvoicedQuantity) * 10 * 10) div 100) + ( round(sum(cac:AllowanceCharge[child::cbc:ChargeIndicator='true']/cbc:Amount) *10 * 10) div 100 ) - ( round(sum(cac:AllowanceCharge[child::cbc:ChargeIndicator='false']/cbc:Amount) *10 * 10) div 100 ) ) or ((cac:Price/cbc:BaseQuantity) and  number(cbc:LineExtensionAmount) = (round((number(cac:Price/cbc:PriceAmount) div number(cac:Price/cbc:BaseQuantity) * number(cbc:InvoicedQuantity)) * 10 * 10) div 100)+ (round(sum(cac:AllowanceCharge[child::cbc:ChargeIndicator='true']/cbc:Amount) * 10 * 10) div 100 ) -(round(sum(cac:AllowanceCharge[child::cbc:ChargeIndicator='false']/cbc:Amount) *10 * 10) div 100))" name="BIIRULE-T10-R018"/>
  <param value="string-length(string(cbc:Name)) &lt;= 50" name="BIIRULE-T10-R019"/>
  <param value="not((cac:StandardItemIdentification)) or (cac:StandardItemIdentification/cbc:ID/@schemeID)" name="BIIRULE-T10-R020"/>
  <param value="not((cac:CommodityClassification)) or (cac:CommodityClassification/cbc:ItemClassificationCode/@listID)" name="BIIRULE-T10-R021"/>
  <param value="number(.) &gt;=0" name="BIIRULE-T10-R022"/>
  <param value="(cbc:IssueDate)" name="BIIRULE-T10-R023"/>
  <param value="(cbc:ID)" name="BIIRULE-T10-R024"/>
  <param value="(cac:Item/cbc:Name)" name="BIIRULE-T10-R025"/>
  <param value="(cac:AccountingSupplierParty/cac:Party/cac:PartyName/cbc:Name)" name="BIIRULE-T10-R026"/>
  <param value="(cac:AccountingCustomerParty/cac:Party/cac:PartyName/cbc:Name)" name="BIIRULE-T10-R027"/>
  <param value="((cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']/cbc:TaxAmount) and (round(sum(cac:TaxTotal//cac:TaxSubtotal/cbc:TaxableAmount) *10 * 10) div 100 = number(cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount))) or not((cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']))" name="BIIRULE-T10-R028"/>
  <param value="(cbc:UBLVersionID)" name="BIIRULE-T10-R029"/>
  <param value="(cbc:CustomizationID)" name="BIIRULE-T10-R030"/>
  <param value="(cbc:ProfileID)" name="BIIRULE-T10-R031"/>
  <param value="cbc:ID" name="BIIRULE-T10-R032"/>
  <param value="(cac:InvoiceLine)" name="BIIRULE-T10-R033"/>
  <param value="(cbc:DocumentCurrencyCode)" name="BIIRULE-T10-R034"/>
  <param value="(cac:OrderReference/cbc:ID) or not(cac:OrderReference)" name="BIIRULE-T10-R035"/>
  <param value="(cac:ContractDocumentReference/cbc:ID) or not(cac:ContractDocumentReference)" name="BIIRULE-T10-R036"/>
  <param value="cbc:ID" name="BIIRULE-T10-R037"/>
  <param value="(cac:LegalMonetaryTotal/cbc:PayableAmount)" name="BIIRULE-T10-R038"/>
  <param value="(cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount)" name="BIIRULE-T10-R039"/>
  <param value="(cbc:IdentificationCode)" name="BIIRULE-T10-R040"/>
  <param value="(cbc:CompanyID)" name="BIIRULE-T10-R041"/>
  <param value="(cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount)" name="BIIRULE-T10-R042"/>
  <param value="(cac:LegalMonetaryTotal/cbc:LineExtensionAmount)" name="BIIRULE-T10-R043"/>
  <param value="not(cac:PaymentMeans) or (cac:PaymentMeans/cbc:PaymentMeansCode)" name="BIIRULE-T10-R044"/>
  <param value="(cac:TaxTotal/cbc:TaxAmount)" name="BIIRULE-T10-R045"/>
  <param value="not(cac:TaxSubtotal) or (cac:TaxSubtotal/cbc:TaxableAmount)" name="BIIRULE-T10-R046"/>
  <param value="not(cac:TaxSubtotal) or (cac:TaxSubtotal/cbc:TaxAmount)" name="BIIRULE-T10-R047"/>
  <param value="cbc:ID" name="BIIRULE-T10-R048"/>
  <param value="cbc:ID" name="BIIRULE-T10-R049"/>
  <param value="cbc:LineExtensionAmount" name="BIIRULE-T10-R050"/>
  <param value="//cac:AccountingCustomerParty" name="Customer"/>
  <param value="//cac:InvoiceLine" name="Invoice_Line"/>
  <param value="//cac:InvoicePeriod" name="Invoice_Period"/>
  <param value="/ubl:Invoice" name="Invoice"/>
  <param value="//cac:InvoiceLine/cac:Price/cbc:PriceAmount" name="Item_Price"/>
  <param value="//cac:Item" name="Item"/>
  <param value="//cac:PaymentMeans" name="Payment_Means"/>
  <param value="//cac:AccountingSupplierParty" name="Supplier"/>
  <param value="/ubl:Invoice/cac:TaxTotal" name="Tax_Total"/>
  <param value="//cac:LegalMonetaryTotal" name="Total_Amounts"/>
  <param value="//cac:PartyLegalEntity" name="Party_Legal_Entity"/>
  <param value="//cac:TaxCategory" name="Tax_Category"/>
  <param value="//cac:TaxScheme" name="Tax_Scheme"/>
  <param value="//cac:AdditionalDocumentReference" name="Annex"/>
  <param value="//cac:Country" name="Country"/>
</pattern><?DSDL_INCLUDE_END UBL/BIIRULES-UBL-T10.sch?>
  <?DSDL_INCLUDE_START UBL/EUGEN-UBL-T10.sch?><pattern id="EUGENUBL-T10" is-a="EUGENT10">
  <param value="(cac:PostalAddress/cbc:StreetName and cac:PostalAddress/cbc:CityName and cac:PostalAddress/cbc:PostalZone and cac:PostalAddress/cac:Country/cbc:IdentificationCode)" name="EUGEN-T10-R001"/>
  <param value="(cac:PostalAddress/cbc:StreetName and cac:PostalAddress/cbc:CityName and cac:PostalAddress/cbc:PostalZone and cac:PostalAddress/cac:Country/cbc:IdentificationCode)" name="EUGEN-T10-R002"/>
  <param value="(cbc:InvoicedQuantity and cbc:InvoicedQuantity/@unitCode)" name="EUGEN-T10-R003"/>
  <param value="((cbc:PaymentMeansCode = '31') and (cac:PayeeFinancialAccount/cbc:ID/@schemeID and cac:PayeeFinancialAccount/cbc:ID/@schemeID = 'IBAN') and (cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cac:FinancialInstitution/cbc:ID/@schemeID and cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cac:FinancialInstitution/cbc:ID/@schemeID = 'BIC')) or (cbc:PaymentMeansCode != '31') or ((cbc:PaymentMeansCode = '31') and  (not(cac:PayeeFinancialAccount/cbc:ID/@schemeID) or (cac:PayeeFinancialAccount/cbc:ID/@schemeID != 'IBAN')))" name="EUGEN-T10-R004"/>
  <param value="(cbc:CityName and cbc:PostalZone and cac:Country/cbc:IdentificationCode)" name="EUGEN-T10-R005"/>
  <param value="((//cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']/cbc:TaxAmount) and (cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT')) or not((//cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']))" name="EUGEN-T10-R006"/>
  <param value="((cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']/cbc:TaxAmount) and (cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cbc:CompanyID) or not((cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT'])))" name="EUGEN-T10-R007"/>
  <param value="(parent::cac:AllowanceCharge) or (cbc:ID and cbc:Percent) or (cbc:ID = 'AE')" name="EUGEN-T10-R008"/>
  <param value="(number(cac:TaxCategory/cbc:Percent) = 0 and (cac:TaxCategory/cbc:TaxExemptionReason or cac:TaxCategory/cbc:TaxExemptionReasonCode)) or  (number(cac:TaxCategory/cbc:Percent) !=0)" name="EUGEN-T10-R009"/>
  <param value="not(cac:PayeeParty) or (cac:PayeeParty/cac:PartyName/cbc:Name)" name="EUGEN-T10-R010"/>
  <param value="(//cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']/cbc:TaxAmount and cbc:ID) or not((//cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']))" name="EUGEN-T10-R011"/>
  <param value="number(.) &gt;=0" name="EUGEN-T10-R012"/>
  <param value="(cbc:MultiplierFactorNumeric and cbc:BaseAmount) or (not(cbc:MultiplierFactorNumeric) and not(cbc:BaseAmount))" name="EUGEN-T10-R013"/>
  <param value="((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode != //cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) or (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode != //cac:Delivery/cac:DeliveryLocation/cac:Address/cac:Country/cbc:IdentificationCode)) and (//cac:TaxCategory/cbc:ID) = 'AE'  or not((//cac:TaxCategory/cbc:ID) = 'AE' )" name="EUGEN-T10-R014"/>
  <param value="starts-with(//cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cbc:CompanyID,//cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) and (//cac:TaxCategory/cbc:ID) = 'AE'  or not((//cac:TaxCategory/cbc:ID) = 'AE' )" name="EUGEN-T10-R015"/>
  <param value="(((//cac:TaxCategory/cbc:ID) = 'AE') and not((//cac:TaxCategory/cbc:ID) != 'AE' )) or not((//cac:TaxCategory/cbc:ID) = 'AE') or not(//cac:TaxCategory)" name="EUGEN-T10-R016"/>
  <param value="(//cbc:TaxExclusiveAmount = //cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cbc:ID='AE']/cbc:TaxableAmount) and (//cac:TaxCategory/cbc:ID) = 'AE'  or not((//cac:TaxCategory/cbc:ID) = 'AE' )" name="EUGEN-T10-R017"/>
  <param value="//cac:TaxTotal/cbc:TaxAmount = 0 and (//cac:TaxCategory/cbc:ID) = 'AE'  or not((//cac:TaxCategory/cbc:ID) = 'AE' )" name="EUGEN-T10-R018"/>
  <param value="//cac:InvoiceLine" name="Invoice_Line"/>
  <param value="//cac:PaymentMeans" name="Payment_Means"/>
  <param value="//cac:AccountingSupplierParty/cac:Party" name="Supplier_Party"/>
  <param value="//cac:AllowanceCharge[cbc:ChargeIndicator='false']/cbc:MultiplierFactorNumeric" name="Allowance_Percentage"/>
  <param value="//cac:TaxCategory" name="Tax_Category"/>
  <param value="//cac:AccountingCustomerParty/cac:Party" name="Customer_Party"/>
  <param value="//cac:Delivery/cac:DeliveryLocation/cac:Address" name="Delivery_Address"/>
  <param value="/ubl:Invoice" name="Invoice"/>
  <param value="//cac:TaxSubtotal" name="Tax_Subtotal"/>
  <param value="//cac:Item/cac:ClassifiedTaxCategory" name="Classified_Tax_Category"/>
  <param value="/ubl:Invoice/cac:AllowanceCharge" name="Allowance_Charge"/>
  <param value="//cac:AllowanceCharge[cbc:ChargeIndicator='false']" name="Allowance"/>
</pattern><?DSDL_INCLUDE_END UBL/EUGEN-UBL-T10.sch?>
  <?DSDL_INCLUDE_START UBL/NONAT-UBL-T10.sch?><pattern id="NONATUBL-T10" is-a="NONATT10">
  <param value="(cac:PartyLegalEntity/cbc:CompanyID != '') and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NONAT-T10-R001"/>
  <param value="//cac:PaymentMeans/cbc:PaymentDueDate and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NONAT-T10-R002"/>
  <param value="//cac:Delivery/cbc:ActualDeliveryDate and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NONAT-T10-R003"/>
  <param value="//cac:Delivery/cac:DeliveryLocation/cac:Address and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NONAT-T10-R004"/>
  <param value="cbc:InvoicedQuantity and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NONAT-T10-R005"/>
  <param value="(cac:PostalAddress/cbc:StreetName and cac:PostalAddress/cbc:CityName and cac:PostalAddress/cbc:PostalZone and cac:PostalAddress/cac:Country/cbc:IdentificationCode) and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NONAT-T10-R006"/>
  <param value="(cac:PostalAddress/cbc:StreetName and cac:PostalAddress/cbc:CityName and cac:PostalAddress/cbc:PostalZone and cac:PostalAddress/cac:Country/cbc:IdentificationCode) and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NONAT-T10-R007"/>
  <param value="//cac:AccountingSupplierParty/cac:Party" name="Supplier_Party"/>
  <param value="//cac:InvoiceLine" name="Invoice_Line"/>
  <param value="/ubl:Invoice" name="Invoice"/>
  <param value="//cac:AccountingCustomerParty/cac:Party" name="Customer_Party"/>
</pattern><?DSDL_INCLUDE_END UBL/NONAT-UBL-T10.sch?>
  <!-- Code Lists Binding rules -->
  <!-- ======================== -->
  <?DSDL_INCLUDE_START codelist/BIIRULESCodesT10.sch?><pattern id="BIIRULESCodesT10">
<!--
  This implementation supports genericode code lists with no instance
  meta data.
-->
<!--
    Start of synthesis of rules from code list context associations.
Version 0.3
-->

<rule context="cbc:InvoiceTypeCode" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' 380 393 ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-010-001]-InvoiceTypeCode in an invoice MUST be 380 from UN/ECE 1001 code list</assert>
</rule>

<rule context="cbc:DocumentCurrencyCode" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' AED AFN ALL AMD ANG AOA ARS AUD AWG AZN BAM BBD BDT BGN BHD BIF BMD BND BOB BOV BRL BSD BTN BWP BYR BZD CAD CDF CHE CHF CHW CLF CLP CNY COP COU CRC CUP CVE CZK DJF DKK DOP DZD EEK EGP ERN ETB EUR FJD FKP GBP GEL GHS GIP GMD GNF GTQ GWP GYD HKD HNL HRK HTG HUF IDR ILS INR IQD IRR ISK JMD JOD JPY KES KGS KHR KMF KPW KRW KWD KYD KZT LAK LBP LKR LRD LSL LTL LVL LYD MAD MDL MGA MKD MMK MNT MOP MRO MUR MVR MWK MXN MXV MYR MZN NAD NGN NIO NOK NPR NZD OMR PAB PEN PGK PHP PKR PLN PYG QAR RON RSD RUB RWF SAR SBD SCR SDG SEK SGD SHP SKK SLL SOS SRD STD SVC SYP SZL THB TJS TMM TND TOP TRY TTD TWD TZS UAH UGX USD USN USS UYI UYU UZS VEF VND VUV WST XAF XAG XAU XBA XBB XBC XBD XCD XDR XFU XOF XPD XPF XTS XXX YER ZAR ZMK ZWR ZWD ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-010-002]-DocumentCurrencyCode MUST be coded using ISO code list 4217</assert>
</rule>

<rule context="@currencyID" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' AED AFN ALL AMD ANG AOA ARS AUD AWG AZN BAM BBD BDT BGN BHD BIF BMD BND BOB BOV BRL BSD BTN BWP BYR BZD CAD CDF CHE CHF CHW CLF CLP CNY COP COU CRC CUP CVE CZK DJF DKK DOP DZD EEK EGP ERN ETB EUR FJD FKP GBP GEL GHS GIP GMD GNF GTQ GWP GYD HKD HNL HRK HTG HUF IDR ILS INR IQD IRR ISK JMD JOD JPY KES KGS KHR KMF KPW KRW KWD KYD KZT LAK LBP LKR LRD LSL LTL LVL LYD MAD MDL MGA MKD MMK MNT MOP MRO MUR MVR MWK MXN MXV MYR MZN NAD NGN NIO NOK NPR NZD OMR PAB PEN PGK PHP PKR PLN PYG QAR RON RSD RUB RWF SAR SBD SCR SDG SEK SGD SHP SKK SLL SOS SRD STD SVC SYP SZL THB TJS TMM TND TOP TRY TTD TWD TZS UAH UGX USD USN USS UYI UYU UZS VEF VND VUV WST XAF XAG XAU XBA XBB XBC XBD XCD XDR XFU XOF XPD XPF XTS XXX YER ZAR ZMK ZWR ZWD ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-010-003]-currencyID MUST be coded using ISO code list 4217</assert>
</rule>

<rule context="cac:Country//cbc:IdentificationCode" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' AD AE AF AG AI AL AM AN AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BL BJ BM BN BO BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CR CU CV CX CY CZ DE DJ DK DM DO DZ EC EE EG EH ER ES ET FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU ID IE IL IM IN IO IQ IR IS IT JE JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MF MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NO NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR ST SV SY SZ TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM US UY UZ VA VC VE VG VI VN VU WF WS YE YT ZA ZM ZW ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-010-004]-Country codes in an invoice MUST be coded using ISO code list 3166-1</assert>
</rule>

<rule context="cac:TaxScheme//cbc:ID" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' AAA AAB AAC AAD AAE AAF AAG AAH AAI AAJ AAK AAL ADD BOL CAP CAR COC CST CUD CVD ENV EXC EXP FET FRE GCN GST ILL IMP IND LAC LCN LDP LOC LST MCA MCD OTH PDB PDC PRF SCN SSS STT SUP SUR SWT TAC TOT TOX TTA VAD VAT ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[CL-010-005]-Invoice tax schemes MUST be coded using UN/ECE 5153 code list</assert>
</rule>

<rule context="cac:PaymentMeans//cbc:PaymentMeansCode" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 60 61 62 63 64 65 66 67 70 74 75 76 77 78 91 92 93 94 95 96 97 ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[CL-010-006]-Payment means in an invoice MUST be coded using CEFACT code list 4461</assert>
</rule>

<rule context="cac:TaxCategory//cbc:ID" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' A AA AB AC AD AE B C E G H O S Z ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[CL-010-007]-Invoice tax categories MUST be coded using UN/ECE 5305 code list</assert>
</rule>
<!--
    End of synthesis of rules from code list context associations.
-->
</pattern><?DSDL_INCLUDE_END codelist/BIIRULESCodesT10.sch?>
  <?DSDL_INCLUDE_START codelist/EUGENCodesT10.sch?><pattern id="EUGENCodesT10">
<!--
  This implementation supports genericode code lists with no instance
  meta data.
-->
<!--
    Start of synthesis of rules from code list context associations.
Version 0.3
-->

<rule context="cac:FinancialInstitution/cbc:ID//@schemeID" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' BIC ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[PCL-010-002]-Financial Institution SHOULD ONLY be BIC code.</assert>
</rule>

<rule context="cac:PostalAddress/cbc:ID//@schemeID" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' GLN ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[PCL-010-003]-Postal address identifiers SHOULD ONLY be GLN.</assert>
</rule>

<rule context="cac:Delivery/cac:DeliveryLocation/cbc:ID//@schemeID" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' GLN ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[PCL-010-004]-Location identifiers SHOULD ONLY be GLN</assert>
</rule>

<rule context="cac:Item/cac:StandardItemIdentification/cbc:ID//@schemeID" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' GTIN ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[PCL-010-005]-Standard item identifiers SHOULD ONLY be GTIN.</assert>
</rule>

<rule context="cac:Item/cac:CommodityClassification/cbc:ItemClassificationCode//@listID" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' UNSPSC eCLASS CPV ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[PCL-010-006]-Commodity classification SHOULD ONLY be one of UNSPSC, eClass or CPV.</assert>
</rule>
<!--
    End of synthesis of rules from code list context associations.
-->
</pattern><?DSDL_INCLUDE_END codelist/EUGENCodesT10.sch?>
</schema>