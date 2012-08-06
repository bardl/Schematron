<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T14 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="EUGENUBL-T14" is-a="EUGENT14">
  <param value="(cac:PostalAddress/cbc:StreetName and cac:PostalAddress/cbc:CityName and cac:PostalAddress/cbc:PostalZone and cac:PostalAddress/cac:Country/cbc:IdentificationCode)" name="EUGEN-T14-R001"/>
  <param value="(cac:PostalAddress/cbc:StreetName and cac:PostalAddress/cbc:CityName and cac:PostalAddress/cbc:PostalZone and cac:PostalAddress/cac:Country/cbc:IdentificationCode)" name="EUGEN-T14-R002"/>
  <param value="(cbc:CreditedQuantity and cbc:CreditedQuantity/@unitCode)" name="EUGEN-T14-R003"/>
  <param value="(((//cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']/cbc:TaxAmount) and (cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT')) or not((//cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT'])) and (local-name(parent:: node())=&quot;Invoice&quot;)) or not(local-name(parent:: node())=&quot;CreditNote&quot;)" name="EUGEN-T14-R004"/>
  <param value="((cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']/cbc:TaxAmount) and (cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cbc:CompanyID) or not((cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT'])))" name="EUGEN-T14-R007"/>
  <param value="(parent::cac:AllowanceCharge) or (cbc:ID and cbc:Percent) or (cbc:ID = 'AE')" name="EUGEN-T14-R012"/>
  <param value="(number(cac:TaxCategory/cbc:Percent) = 0 and (cac:TaxCategory/cbc:TaxExemptionReason or cac:TaxCategory/cbc:TaxExemptionReasonCode)) or  (number(cac:TaxCategory/cbc:Percent) !=0)" name="EUGEN-T14-R013"/>
  <param value="starts-with(//cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cbc:CompanyID,//cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) and (//cac:TaxCategory/cbc:ID) = 'AE'  or not((//cac:TaxCategory/cbc:ID) = 'AE' )" name="EUGEN-T14-R015"/>
  <param value="(((//cac:TaxCategory/cbc:ID) = 'AE')  and not((//cac:TaxCategory/cbc:ID) != 'AE' )) or not((//cac:TaxCategory/cbc:ID) = 'AE') or not(//cac:TaxCategory)" name="EUGEN-T14-R016"/>
  <param value="(//cbc:TaxExclusiveAmount = //cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cbc:ID='AE']/cbc:TaxableAmount) and (//cac:TaxCategory/cbc:ID) = 'AE'  or not((//cac:TaxCategory/cbc:ID) = 'AE' )" name="EUGEN-T14-R017"/>
  <param value="//cac:TaxTotal/cbc:TaxAmount = 0 and (//cac:TaxCategory/cbc:ID) = 'AE'  or not((//cac:TaxCategory/cbc:ID) = 'AE' )" name="EUGEN-T14-R018"/>
  <param value="number(cbc:PayableAmount) &gt;= 0" name="EUGEN-T14-R019"/>
  <param value="(cbc:StartDate)" name="EUGEN-T14-R020"/>
  <param value="(cbc:EndDate)" name="EUGEN-T14-R021"/>
  <param value="number(cbc:Amount)&gt;=0" name="EUGEN-T14-R022"/>
  <param value="(cbc:AllowanceChargeReason)" name="EUGEN-T14-R023"/>
  <param value="not(//@currencyID != //cbc:DocumentCurrencyCode)" name="EUGEN-T14-R024"/>
  <param value="(//cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']/cbc:TaxAmount and cbc:ID) or not((//cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']))" name="EUGEN-T14-R031"/>
  <param value="//cac:CreditNoteLine" name="Credit_Note_Line"/>
  <param value="//cac:AccountingSupplierParty/cac:Party" name="Supplier_Party"/>
  <param value="//cac:TaxCategory" name="Tax_Category"/>
  <param value="//cac:AccountingCustomerParty/cac:Party" name="Customer_Party"/>
  <param value="/ubl:CreditNote" name="Credit_Note"/>
  <param value="//cac:TaxSubtotal" name="Tax_Subtotal"/>
  <param value="//cac:Item/cac:ClassifiedTaxCategory" name="Classified_Tax_Category"/>
  <param value="//cac:AllowanceCharge" name="Allowance_Charge"/>
  <param value="//cac:InvoicePeriod" name="Invoice_Period"/>
  <param value="//cac:LegalMonetaryTotal" name="Total_Amounts"/>
</pattern>
