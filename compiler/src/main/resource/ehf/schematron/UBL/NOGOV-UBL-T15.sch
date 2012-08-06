<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T15 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="NOGOVUBL-T15" is-a="NOGOVT15">
  <param value="(cac:ContractDocumentReference/cbc:ID != '') and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NOGOV-T15-R005"/>
  <param value="(cac:Contact/cbc:ID != '') and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NOGOV-T15-R007"/>
  <param value="(cac:PartyIdentification/cbc:ID != '') and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NOGOV-T15-R006"/>
  <param value="(cac:Contact/cbc:ID != '') and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NOGOV-T15-R001"/>
  <param value="(cac:SellersItemIdentification/cbc:ID != '') and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NOGOV-T15-R002"/>
  <param value="(cbc:AccountingCost) and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NOGOV-T15-R003"/>
  <param value="(cac:OrderLineReference/cbc:LineID != '') and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NOGOV-T15-R004"/>
  <param value="(number(cac:ClassifiedTaxCategory/cbc:Percent) &gt;=0) and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NOGOV-T15-R008"/>
  <param value="(cac:PartyLegalEntity/cbc:CompanyID != '') and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NOGOV-T15-R009"/>
  <param value="(child::cbc:InvoicedQuantity/@unitCode != '') and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NOGOV-T15-R010"/>
  <param value="(cac:PayeeFinancialAccount/cbc:ID != '') and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NOGOV-T15-R011"/>
  <param value="(cbc:PaymentID != '') and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NOGOV-T15-R012"/>
  <param value="(child::cbc:ID != '') and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NOGOV-T15-R013"/>
  <param value="(cac:PostalAddress/cac:Country/cbc:IdentificationCode != '')" name="NOGOV-T15-R014"/>
  <param value="/ubl:Invoice/cac:AccountingCustomerParty/cac:Party" name="Customer_Party"/>
  <param value="//cac:InvoiceLine" name="Invoice_Line"/>
  <param value="/ubl:Invoice" name="Invoice"/>
  <param value="//cac:Item" name="Item"/>
  <param value="/ubl:Invoice/cac:AccountingSupplierParty/cac:Party" name="Supplier_Party"/>
  <param value="//cac:OrderReference" name="Order_Reference"/>
  <param value="//cac:PaymentMeans" name="Payment_Means"/>
</pattern>
