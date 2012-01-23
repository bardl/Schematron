<?xml version="1.0" encoding="UTF-8"?>
<!-- 

        	UBL syntax binding to the T10   
        	Author: Oriol Bausà

     -->
<schema xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:ubl="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <title>Norsk faktura binding til UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2"/>
  <phase id="BIICORET10_phase">
    <active pattern="BIICOREUBL-T10"/>
  </phase>
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
  <phase id="NOGOVT10_phase">
    <active pattern="NOGOVUBL-T10"/>
  </phase>
  <phase id="BIIRULEScodelist_phase">
    <active pattern="BIIRULESCodesT10"/>
  </phase>
  <phase id="EUGENcodelist_phase">
    <active pattern="EUGENCodesT10"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <include href="abstract/BIICORE-T10.sch"/>
  <include href="abstract/BIIPROFILES-T10.sch"/>
  <include href="abstract/BIIRULES-T10.sch"/>
  <include href="abstract/EUGEN-T10.sch"/>
  <include href="abstract/NONAT-T10.sch"/>
  <include href="abstract/NOGOV-T10.sch"/>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <include href="UBL/BIICORE-UBL-T10.sch"/>
  <include href="UBL/BIIPROFILES-UBL-T10.sch"/>
  <include href="UBL/BIIRULES-UBL-T10.sch"/>
  <include href="UBL/EUGEN-UBL-T10.sch"/>
  <include href="UBL/NONAT-UBL-T10.sch"/>
  <include href="UBL/NOGOV-UBL-T10.sch"/>
  <!-- Code Lists Binding rules -->
  <!-- ======================== -->
  <include href="codelist/BIIRULESCodesT10.sch"/>
  <include href="codelist/EUGENCodesT10.sch"/>
</schema>
