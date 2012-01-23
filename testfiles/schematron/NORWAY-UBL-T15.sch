<?xml version="1.0" encoding="UTF-8"?>
<!-- 

        	UBL syntax binding to the T15   
        	Author: Oriol Bausà

     -->
<schema xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:ubl="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <title>Norsk Korrektiv faktura binding til UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2"/>
  <phase id="BIICORET15_phase">
    <active pattern="BIICOREUBL-T15"/>
  </phase>
  <phase id="BIIPROFILET15_phase">
    <active pattern="BIIPROFILESUBL-T15"/>
  </phase>
  <phase id="BIIRULEST15_phase">
    <active pattern="BIIRULESUBL-T15"/>
  </phase>
  <phase id="EUGENT15_phase">
    <active pattern="EUGENUBL-T15"/>
  </phase>
  <phase id="NONATT15_phase">
    <active pattern="NONATUBL-T15"/>
  </phase>
  <phase id="NOGOVT15_phase">
    <active pattern="NOGOVUBL-T15"/>
  </phase>
  <phase id="BIIRULEScodelist_phase">
    <active pattern="BIIRULESCodesT15"/>
  </phase>
  <phase id="EUGENcodelist_phase">
    <active pattern="EUGENCodesT15"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <include href="abstract/BIICORE-T15.sch"/>
  <include href="abstract/BIIPROFILES-T15.sch"/>
  <include href="abstract/BIIRULES-T15.sch"/>
  <include href="abstract/EUGEN-T15.sch"/>
  <include href="abstract/NONAT-T15.sch"/>
  <include href="abstract/NOGOV-T15.sch"/>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <include href="UBL/BIICORE-UBL-T15.sch"/>
  <include href="UBL/BIIPROFILES-UBL-T15.sch"/>
  <include href="UBL/BIIRULES-UBL-T15.sch"/>
  <include href="UBL/EUGEN-UBL-T15.sch"/>
  <include href="UBL/NONAT-UBL-T15.sch"/>
  <include href="UBL/NOGOV-UBL-T15.sch"/>
  <!-- Code Lists Binding rules -->
  <!-- ======================== -->
  <include href="codelist/BIIRULESCodesT15.sch"/>
  <include href="codelist/EUGENCodesT15.sch"/>
</schema>
