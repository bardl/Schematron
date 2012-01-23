<?xml version="1.0" encoding="UTF-8"?>
<!-- 

        	UBL syntax binding to the T10   
        	Author: Oriol Bausà

     -->
<schema xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:ubl="urn:oasis:names:specification:ubl:schema:xsd:CreditNote-2" xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <title>Norsk Kredit Nota binding til UBL </title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:CreditNote-2"/>
  <phase id="BIICORET14_phase">
    <active pattern="BIICOREUBL-T14"/>
  </phase>
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
  <phase id="NOGOVT14_phase">
    <active pattern="NOGOVUBL-T14"/>
  </phase>
  <phase id="BIIRULEScodelist_phase">
    <active pattern="BIIRULESCodesT14"/>
  </phase>
  <phase id="EUGENcodelist_phase">
    <active pattern="EUGENCodesT14"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <include href="abstract/BIICORE-T14.sch"/>
  <include href="abstract/BIIPROFILES-T14.sch"/>
  <include href="abstract/BIIRULES-T14.sch"/>
  <include href="abstract/EUGEN-T14.sch"/>
  <include href="abstract/NONAT-T14.sch"/>
  <include href="abstract/NOGOV-T14.sch"/>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <include href="UBL/BIICORE-UBL-T14.sch"/>
  <include href="UBL/BIIPROFILES-UBL-T14.sch"/>
  <include href="UBL/BIIRULES-UBL-T14.sch"/>
  <include href="UBL/EUGEN-UBL-T14.sch"/>
  <include href="UBL/NONAT-UBL-T14.sch"/>
  <include href="UBL/NOGOV-UBL-T14.sch"/>
  <!-- Code Lists Binding rules -->
  <!-- ======================== -->
  <include href="codelist/BIIRULESCodesT14.sch"/>
  <include href="codelist/EUGENCodesT14.sch"/>
</schema>
