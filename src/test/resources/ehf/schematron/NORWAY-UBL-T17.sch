<?xml version="1.0" encoding="UTF-8"?>
<!-- 

        	UBL syntax binding to the T17   
        	Author: Oriol Bausà

     -->
<schema xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:ubl="urn:oasis:names:specification:ubl:schema:xsd:Reminder-2" queryBinding="xslt2" xmlns="http://purl.oclc.org/dsdl/schematron">
  <title>Norsk purring til UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:Reminder-2"/>
  <phase id="NONATT17_phase">
    <active pattern="NONATUBL-T17"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <include href="abstract/NONAT-T17.sch"/>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <include href="UBL/NONAT-ubl-T17.sch"/>
</schema>
