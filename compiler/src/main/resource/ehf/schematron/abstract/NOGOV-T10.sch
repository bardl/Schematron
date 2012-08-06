<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T10 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="NOGOVT10">
  <rule context="$Supplier_Party">
    <assert test="$NOGOV-T10-R001" flag="warning">[NOGOV-T10-R001]-A contact reference identifier SHOULD be provided for AccountingSupplierParty according to EHF.</assert>
    <assert test="$NOGOV-T10-R014" flag="fatal">[NOGOV-T10-R014]-Country code for the supplier address MUST be provided according to EHF.</assert>
  </rule>
  <rule context="$Payment_Means">
    <assert test="$NOGOV-T10-R011" flag="fatal">[NOGOV-T10-R011]-PayeeFinancialAccount MUST be provided  according EHF.</assert>
    <assert test="$NOGOV-T10-R012" flag="warning">[NOGOV-T10-R012]-Payment Identifier (KID number) SHOULD be used according to EHF.</assert>
  </rule>
  <rule context="$Order_Reference">
    <assert test="$NOGOV-T10-R013" flag="warning">[NOGOV-T10-R013]-An association to Order Reference SHOULD be provided according to EHF.</assert>
  </rule>
  <rule context="$Item">
    <assert test="$NOGOV-T10-R002" flag="warning">[NOGOV-T10-R002]-The sellers ID for the item SHOULD be provided according to EHF.</assert>
    <assert test="$NOGOV-T10-R008" flag="fatal">[NOGOV-T10-R008]-The item's tax rate, expressed as a percentage MUST be provided according to EHF.</assert>
  </rule>
  <rule context="$Invoice_Line">
    <assert test="$NOGOV-T10-R003" flag="warning">[NOGOV-T10-R003]-The buyer's accounting code applied to the Invoice Line SHOULD be provided according to EHF.</assert>
    <assert test="$NOGOV-T10-R004" flag="warning">[NOGOV-T10-R004]-An association to Order Line Reference SHOULD be provided according to EHF.</assert>
    <assert test="$NOGOV-T10-R010" flag="warning">[NOGOV-T10-R010]-The unit qualifier of the invoiced quantity SHOULD be provided according to EHF.</assert>
  </rule>
  <rule context="$Invoice">
    <assert test="$NOGOV-T10-R005" flag="warning">[NOGOV-T10-R005]-ContractDocumentReference SHOULD be provided according to EHF.</assert>
  </rule>
  <rule context="$Customer_Party">
    <assert test="$NOGOV-T10-R006" flag="warning">[NOGOV-T10-R006]-A customer number for AccountingCustomerParty SHOULD be provided according to EHF.</assert>
    <assert test="$NOGOV-T10-R007" flag="fatal">[NOGOV-T10-R007]-A contact reference identifier MUST be provided for AccountingCustomerParty according to EHF.</assert>
    <assert test="$NOGOV-T10-R009" flag="fatal">[NOGOV-T10-R009]-PartyLegalEntity for AccountingCustomerParty MUST be provided according to EHF.</assert>
  </rule>
</pattern>
