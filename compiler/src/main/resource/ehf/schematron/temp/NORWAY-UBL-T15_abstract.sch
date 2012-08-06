<?xml version="1.0" encoding="utf-8"?><!-- 

        	UBL syntax binding to the T15   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:ubl="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" queryBinding="xslt2">
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
  <?DSDL_INCLUDE_START abstract/BIICORE-T15.sch?><pattern abstract="true" id="BIICORET15">
  <rule context="$Invoice">
    <assert test="$BIICORE-T15-R000" flag="warning">[BIICORE-T15-R000]-This XML instance is NOT a BiiTrdm015 transaction</assert>
    <assert test="$BIICORE-T15-R001" flag="warning">[BIICORE-T15-R001]-An invoice SHOULD not contain empty elements.</assert>
    <assert test="$BIICORE-T15-R002" flag="warning">[BIICORE-T15-R002]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R003" flag="warning">[BIICORE-T15-R003]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R004" flag="warning">[BIICORE-T15-R004]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R005" flag="warning">[BIICORE-T15-R005]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R006" flag="warning">[BIICORE-T15-R006]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R007" flag="warning">[BIICORE-T15-R007]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R008" flag="warning">[BIICORE-T15-R008]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R009" flag="warning">[BIICORE-T15-R009]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R010" flag="warning">[BIICORE-T15-R010]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R011" flag="warning">[BIICORE-T15-R011]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R012" flag="warning">[BIICORE-T15-R012]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R013" flag="warning">[BIICORE-T15-R013]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R014" flag="warning">[BIICORE-T15-R014]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R015" flag="warning">[BIICORE-T15-R015]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R016" flag="warning">[BIICORE-T15-R016]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R017" flag="warning">[BIICORE-T15-R017]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R018" flag="warning">[BIICORE-T15-R018]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R019" flag="warning">[BIICORE-T15-R019]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R020" flag="warning">[BIICORE-T15-R020]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R021" flag="warning">[BIICORE-T15-R021]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R022" flag="warning">[BIICORE-T15-R022]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R023" flag="warning">[BIICORE-T15-R023]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R024" flag="warning">[BIICORE-T15-R024]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R025" flag="warning">[BIICORE-T15-R025]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R026" flag="warning">[BIICORE-T15-R026]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R027" flag="warning">[BIICORE-T15-R027]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R028" flag="warning">[BIICORE-T15-R028]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R029" flag="warning">[BIICORE-T15-R029]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R030" flag="warning">[BIICORE-T15-R030]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R031" flag="warning">[BIICORE-T15-R031]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R032" flag="warning">[BIICORE-T15-R032]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R033" flag="warning">[BIICORE-T15-R033]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R034" flag="warning">[BIICORE-T15-R034]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R035" flag="warning">[BIICORE-T15-R035]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R036" flag="warning">[BIICORE-T15-R036]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R037" flag="warning">[BIICORE-T15-R037]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R038" flag="warning">[BIICORE-T15-R038]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R039" flag="warning">[BIICORE-T15-R039]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R040" flag="warning">[BIICORE-T15-R040]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R041" flag="warning">[BIICORE-T15-R041]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R042" flag="warning">[BIICORE-T15-R042]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R043" flag="warning">[BIICORE-T15-R043]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R044" flag="warning">[BIICORE-T15-R044]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R045" flag="warning">[BIICORE-T15-R045]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R046" flag="warning">[BIICORE-T15-R046]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R047" flag="warning">[BIICORE-T15-R047]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R048" flag="warning">[BIICORE-T15-R048]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R049" flag="warning">[BIICORE-T15-R049]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R050" flag="warning">[BIICORE-T15-R050]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R051" flag="warning">[BIICORE-T15-R051]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R052" flag="warning">[BIICORE-T15-R052]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R053" flag="warning">[BIICORE-T15-R053]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R054" flag="warning">[BIICORE-T15-R054]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R055" flag="warning">[BIICORE-T15-R055]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R056" flag="warning">[BIICORE-T15-R056]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R057" flag="warning">[BIICORE-T15-R057]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R058" flag="warning">[BIICORE-T15-R058]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R059" flag="warning">[BIICORE-T15-R059]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R060" flag="warning">[BIICORE-T15-R060]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R061" flag="warning">[BIICORE-T15-R061]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R062" flag="warning">[BIICORE-T15-R062]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R063" flag="warning">[BIICORE-T15-R063]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R064" flag="warning">[BIICORE-T15-R064]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R065" flag="warning">[BIICORE-T15-R065]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R066" flag="warning">[BIICORE-T15-R066]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R067" flag="warning">[BIICORE-T15-R067]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R068" flag="warning">[BIICORE-T15-R068]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R069" flag="warning">[BIICORE-T15-R069]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R070" flag="warning">[BIICORE-T15-R070]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R071" flag="warning">[BIICORE-T15-R071]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R072" flag="warning">[BIICORE-T15-R072]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R073" flag="warning">[BIICORE-T15-R073]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R074" flag="warning">[BIICORE-T15-R074]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R075" flag="warning">[BIICORE-T15-R075]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R076" flag="warning">[BIICORE-T15-R076]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R077" flag="warning">[BIICORE-T15-R077]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R078" flag="warning">[BIICORE-T15-R078]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R079" flag="warning">[BIICORE-T15-R079]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R080" flag="warning">[BIICORE-T15-R080]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R081" flag="warning">[BIICORE-T15-R081]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R082" flag="warning">[BIICORE-T15-R082]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R083" flag="warning">[BIICORE-T15-R083]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R084" flag="warning">[BIICORE-T15-R084]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R085" flag="warning">[BIICORE-T15-R085]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R086" flag="warning">[BIICORE-T15-R086]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R087" flag="warning">[BIICORE-T15-R087]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R088" flag="warning">[BIICORE-T15-R088]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R089" flag="warning">[BIICORE-T15-R089]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R090" flag="warning">[BIICORE-T15-R090]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R091" flag="warning">[BIICORE-T15-R091]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R092" flag="warning">[BIICORE-T15-R092]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R093" flag="warning">[BIICORE-T15-R093]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R094" flag="warning">[BIICORE-T15-R094]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R095" flag="warning">[BIICORE-T15-R095]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R096" flag="warning">[BIICORE-T15-R096]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R097" flag="warning">[BIICORE-T15-R097]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R098" flag="warning">[BIICORE-T15-R098]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R099" flag="warning">[BIICORE-T15-R099]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R100" flag="warning">[BIICORE-T15-R100]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R101" flag="warning">[BIICORE-T15-R101]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R102" flag="warning">[BIICORE-T15-R102]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R103" flag="warning">[BIICORE-T15-R103]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R104" flag="warning">[BIICORE-T15-R104]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R105" flag="warning">[BIICORE-T15-R105]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R106" flag="warning">[BIICORE-T15-R106]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R107" flag="warning">[BIICORE-T15-R107]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R108" flag="warning">[BIICORE-T15-R108]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R109" flag="warning">[BIICORE-T15-R109]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R110" flag="warning">[BIICORE-T15-R110]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R111" flag="warning">[BIICORE-T15-R111]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R112" flag="warning">[BIICORE-T15-R112]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R113" flag="warning">[BIICORE-T15-R113]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R115" flag="warning">[BIICORE-T15-R115]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R116" flag="warning">[BIICORE-T15-R116]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R117" flag="warning">[BIICORE-T15-R117]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R118" flag="warning">[BIICORE-T15-R118]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R119" flag="warning">[BIICORE-T15-R119]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R120" flag="warning">[BIICORE-T15-R120]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R121" flag="warning">[BIICORE-T15-R121]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R122" flag="warning">[BIICORE-T15-R122]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R123" flag="warning">[BIICORE-T15-R123]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R124" flag="warning">[BIICORE-T15-R124]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R125" flag="warning">[BIICORE-T15-R125]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R126" flag="warning">[BIICORE-T15-R126]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R127" flag="warning">[BIICORE-T15-R127]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R128" flag="warning">[BIICORE-T15-R128]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R129" flag="warning">[BIICORE-T15-R129]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R130" flag="warning">[BIICORE-T15-R130]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R131" flag="warning">[BIICORE-T15-R131]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R132" flag="warning">[BIICORE-T15-R132]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R133" flag="warning">[BIICORE-T15-R133]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R134" flag="warning">[BIICORE-T15-R134]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R135" flag="warning">[BIICORE-T15-R135]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R136" flag="warning">[BIICORE-T15-R136]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R137" flag="warning">[BIICORE-T15-R137]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R138" flag="warning">[BIICORE-T15-R138]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R139" flag="warning">[BIICORE-T15-R139]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R140" flag="warning">[BIICORE-T15-R140]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R141" flag="warning">[BIICORE-T15-R141]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R142" flag="warning">[BIICORE-T15-R142]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R143" flag="warning">[BIICORE-T15-R143]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R144" flag="warning">[BIICORE-T15-R144]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R145" flag="warning">[BIICORE-T15-R145]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R146" flag="warning">[BIICORE-T15-R146]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R147" flag="warning">[BIICORE-T15-R147]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R148" flag="warning">[BIICORE-T15-R148]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R149" flag="warning">[BIICORE-T15-R149]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R150" flag="warning">[BIICORE-T15-R150]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R151" flag="warning">[BIICORE-T15-R151]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R152" flag="warning">[BIICORE-T15-R152]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R153" flag="warning">[BIICORE-T15-R153]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R154" flag="warning">[BIICORE-T15-R154]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R155" flag="warning">[BIICORE-T15-R155]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R156" flag="warning">[BIICORE-T15-R156]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R157" flag="warning">[BIICORE-T15-R157]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R158" flag="warning">[BIICORE-T15-R158]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R159" flag="warning">[BIICORE-T15-R159]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R160" flag="warning">[BIICORE-T15-R160]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R161" flag="warning">[BIICORE-T15-R161]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R162" flag="warning">[BIICORE-T15-R162]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R163" flag="warning">[BIICORE-T15-R163]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R164" flag="warning">[BIICORE-T15-R164]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R165" flag="warning">[BIICORE-T15-R165]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R166" flag="warning">[BIICORE-T15-R166]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R167" flag="warning">[BIICORE-T15-R167]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R168" flag="warning">[BIICORE-T15-R168]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R169" flag="warning">[BIICORE-T15-R169]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R170" flag="warning">[BIICORE-T15-R170]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R171" flag="warning">[BIICORE-T15-R171]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R172" flag="warning">[BIICORE-T15-R172]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R173" flag="warning">[BIICORE-T15-R173]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R174" flag="warning">[BIICORE-T15-R174]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R175" flag="warning">[BIICORE-T15-R175]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R176" flag="warning">[BIICORE-T15-R176]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R177" flag="warning">[BIICORE-T15-R177]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R178" flag="warning">[BIICORE-T15-R178]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R179" flag="warning">[BIICORE-T15-R179]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R180" flag="warning">[BIICORE-T15-R180]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R181" flag="warning">[BIICORE-T15-R181]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R182" flag="warning">[BIICORE-T15-R182]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R183" flag="warning">[BIICORE-T15-R183]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R184" flag="warning">[BIICORE-T15-R184]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R186" flag="warning">[BIICORE-T15-R186]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R187" flag="warning">[BIICORE-T15-R187]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R188" flag="warning">[BIICORE-T15-R188]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R189" flag="warning">[BIICORE-T15-R189]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R190" flag="warning">[BIICORE-T15-R190]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R191" flag="warning">[BIICORE-T15-R191]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R192" flag="warning">[BIICORE-T15-R192]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R193" flag="warning">[BIICORE-T15-R193]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R194" flag="warning">[BIICORE-T15-R194]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R195" flag="warning">[BIICORE-T15-R195]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R196" flag="warning">[BIICORE-T15-R196]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R197" flag="warning">[BIICORE-T15-R197]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R198" flag="warning">[BIICORE-T15-R198]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R199" flag="warning">[BIICORE-T15-R199]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R200" flag="warning">[BIICORE-T15-R200]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R201" flag="warning">[BIICORE-T15-R201]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R202" flag="warning">[BIICORE-T15-R202]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R203" flag="warning">[BIICORE-T15-R203]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R204" flag="warning">[BIICORE-T15-R204]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R205" flag="warning">[BIICORE-T15-R205]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R206" flag="warning">[BIICORE-T15-R206]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R207" flag="warning">[BIICORE-T15-R207]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R208" flag="warning">[BIICORE-T15-R208]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R209" flag="warning">[BIICORE-T15-R209]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R210" flag="warning">[BIICORE-T15-R210]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R211" flag="warning">[BIICORE-T15-R211]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R212" flag="warning">[BIICORE-T15-R212]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R213" flag="warning">[BIICORE-T15-R213]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R214" flag="warning">[BIICORE-T15-R214]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R215" flag="warning">[BIICORE-T15-R215]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R216" flag="warning">[BIICORE-T15-R216]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R217" flag="warning">[BIICORE-T15-R217]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R218" flag="warning">[BIICORE-T15-R218]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R219" flag="warning">[BIICORE-T15-R219]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R220" flag="warning">[BIICORE-T15-R220]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R221" flag="warning">[BIICORE-T15-R221]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R222" flag="warning">[BIICORE-T15-R222]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R223" flag="warning">[BIICORE-T15-R223]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R224" flag="warning">[BIICORE-T15-R224]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R225" flag="warning">[BIICORE-T15-R225]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R226" flag="warning">[BIICORE-T15-R226]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R227" flag="warning">[BIICORE-T15-R227]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R228" flag="warning">[BIICORE-T15-R228]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R229" flag="warning">[BIICORE-T15-R229]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R230" flag="warning">[BIICORE-T15-R230]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R231" flag="warning">[BIICORE-T15-R231]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R232" flag="warning">[BIICORE-T15-R232]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R233" flag="warning">[BIICORE-T15-R233]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R234" flag="warning">[BIICORE-T15-R234]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R235" flag="warning">[BIICORE-T15-R235]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R236" flag="warning">[BIICORE-T15-R236]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R237" flag="warning">[BIICORE-T15-R237]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R238" flag="warning">[BIICORE-T15-R238]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R239" flag="warning">[BIICORE-T15-R239]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R240" flag="warning">[BIICORE-T15-R240]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R241" flag="warning">[BIICORE-T15-R241]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R242" flag="warning">[BIICORE-T15-R242]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R243" flag="warning">[BIICORE-T15-R243]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R244" flag="warning">[BIICORE-T15-R244]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R245" flag="warning">[BIICORE-T15-R245]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R246" flag="warning">[BIICORE-T15-R246]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R247" flag="warning">[BIICORE-T15-R247]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R248" flag="warning">[BIICORE-T15-R248]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R249" flag="warning">[BIICORE-T15-R249]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R250" flag="warning">[BIICORE-T15-R250]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R251" flag="warning">[BIICORE-T15-R251]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R252" flag="warning">[BIICORE-T15-R252]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R253" flag="warning">[BIICORE-T15-R253]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R254" flag="warning">[BIICORE-T15-R254]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R255" flag="warning">[BIICORE-T15-R255]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R256" flag="warning">[BIICORE-T15-R256]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R257" flag="warning">[BIICORE-T15-R257]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R258" flag="warning">[BIICORE-T15-R258]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R259" flag="warning">[BIICORE-T15-R259]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R260" flag="warning">[BIICORE-T15-R260]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R261" flag="warning">[BIICORE-T15-R261]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R262" flag="warning">[BIICORE-T15-R262]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R263" flag="warning">[BIICORE-T15-R263]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R264" flag="warning">[BIICORE-T15-R264]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R265" flag="warning">[BIICORE-T15-R265]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R266" flag="warning">[BIICORE-T15-R266]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R267" flag="warning">[BIICORE-T15-R267]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R268" flag="warning">[BIICORE-T15-R268]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R269" flag="warning">[BIICORE-T15-R269]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R270" flag="warning">[BIICORE-T15-R270]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R271" flag="warning">[BIICORE-T15-R271]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R272" flag="warning">[BIICORE-T15-R272]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R273" flag="warning">[BIICORE-T15-R273]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R274" flag="warning">[BIICORE-T15-R274]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R275" flag="warning">[BIICORE-T15-R275]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R276" flag="warning">[BIICORE-T15-R276]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R277" flag="warning">[BIICORE-T15-R277]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R278" flag="warning">[BIICORE-T15-R278]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R279" flag="warning">[BIICORE-T15-R279]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R280" flag="warning">[BIICORE-T15-R280]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R281" flag="warning">[BIICORE-T15-R281]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R282" flag="warning">[BIICORE-T15-R282]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R283" flag="warning">[BIICORE-T15-R283]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R284" flag="warning">[BIICORE-T15-R284]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R285" flag="warning">[BIICORE-T15-R285]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R286" flag="warning">[BIICORE-T15-R286]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R287" flag="warning">[BIICORE-T15-R287]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R288" flag="warning">[BIICORE-T15-R288]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R289" flag="warning">[BIICORE-T15-R289]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R290" flag="warning">[BIICORE-T15-R290]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R291" flag="warning">[BIICORE-T15-R291]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R292" flag="warning">[BIICORE-T15-R292]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R293" flag="warning">[BIICORE-T15-R293]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R294" flag="warning">[BIICORE-T15-R294]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R295" flag="warning">[BIICORE-T15-R295]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R296" flag="warning">[BIICORE-T15-R296]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R297" flag="warning">[BIICORE-T15-R297]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R298" flag="warning">[BIICORE-T15-R298]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R299" flag="warning">[BIICORE-T15-R299]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R300" flag="warning">[BIICORE-T15-R300]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R301" flag="warning">[BIICORE-T15-R301]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R302" flag="warning">[BIICORE-T15-R302]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R303" flag="warning">[BIICORE-T15-R303]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R304" flag="warning">[BIICORE-T15-R304]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R305" flag="warning">[BIICORE-T15-R305]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R306" flag="warning">[BIICORE-T15-R306]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R307" flag="warning">[BIICORE-T15-R307]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R308" flag="warning">[BIICORE-T15-R308]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R309" flag="warning">[BIICORE-T15-R309]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R310" flag="warning">[BIICORE-T15-R310]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R311" flag="warning">[BIICORE-T15-R311]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R312" flag="warning">[BIICORE-T15-R312]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R313" flag="warning">[BIICORE-T15-R313]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R314" flag="warning">[BIICORE-T15-R314]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R315" flag="warning">[BIICORE-T15-R315]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R316" flag="warning">[BIICORE-T15-R316]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R317" flag="warning">[BIICORE-T15-R317]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R318" flag="warning">[BIICORE-T15-R318]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R319" flag="warning">[BIICORE-T15-R319]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R320" flag="warning">[BIICORE-T15-R320]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R321" flag="warning">[BIICORE-T15-R321]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R322" flag="warning">[BIICORE-T15-R322]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R323" flag="warning">[BIICORE-T15-R323]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R324" flag="warning">[BIICORE-T15-R324]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R325" flag="warning">[BIICORE-T15-R325]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R326" flag="warning">[BIICORE-T15-R326]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R327" flag="warning">[BIICORE-T15-R327]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R328" flag="warning">[BIICORE-T15-R328]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R329" flag="warning">[BIICORE-T15-R329]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R330" flag="warning">[BIICORE-T15-R330]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R331" flag="warning">[BIICORE-T15-R331]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R332" flag="warning">[BIICORE-T15-R332]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R333" flag="warning">[BIICORE-T15-R333]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R334" flag="warning">[BIICORE-T15-R334]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R335" flag="warning">[BIICORE-T15-R335]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R336" flag="warning">[BIICORE-T15-R336]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R337" flag="warning">[BIICORE-T15-R337]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R338" flag="warning">[BIICORE-T15-R338]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R339" flag="warning">[BIICORE-T15-R339]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R340" flag="warning">[BIICORE-T15-R340]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R341" flag="warning">[BIICORE-T15-R341]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R342" flag="warning">[BIICORE-T15-R342]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R343" flag="warning">[BIICORE-T15-R343]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R344" flag="warning">[BIICORE-T15-R344]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R345" flag="warning">[BIICORE-T15-R345]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R346" flag="warning">[BIICORE-T15-R346]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R347" flag="warning">[BIICORE-T15-R347]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R348" flag="warning">[BIICORE-T15-R348]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R349" flag="warning">[BIICORE-T15-R349]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R350" flag="warning">[BIICORE-T15-R350]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R351" flag="warning">[BIICORE-T15-R351]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R352" flag="warning">[BIICORE-T15-R352]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R353" flag="warning">[BIICORE-T15-R353]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R354" flag="warning">[BIICORE-T15-R354]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R355" flag="warning">[BIICORE-T15-R355]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R356" flag="warning">[BIICORE-T15-R356]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R357" flag="warning">[BIICORE-T15-R357]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R358" flag="warning">[BIICORE-T15-R358]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R359" flag="warning">[BIICORE-T15-R359]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R360" flag="warning">[BIICORE-T15-R360]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R361" flag="warning">[BIICORE-T15-R361]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R362" flag="warning">[BIICORE-T15-R362]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R363" flag="warning">[BIICORE-T15-R363]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R364" flag="warning">[BIICORE-T15-R364]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R365" flag="warning">[BIICORE-T15-R365]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R366" flag="warning">[BIICORE-T15-R366]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R367" flag="warning">[BIICORE-T15-R367]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R368" flag="warning">[BIICORE-T15-R368]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R369" flag="warning">[BIICORE-T15-R369]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R370" flag="warning">[BIICORE-T15-R370]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R371" flag="warning">[BIICORE-T15-R371]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R372" flag="warning">[BIICORE-T15-R372]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R373" flag="warning">[BIICORE-T15-R373]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R374" flag="warning">[BIICORE-T15-R374]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R375" flag="warning">[BIICORE-T15-R375]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R376" flag="warning">[BIICORE-T15-R376]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R377" flag="warning">[BIICORE-T15-R377]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R378" flag="warning">[BIICORE-T15-R378]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R379" flag="warning">[BIICORE-T15-R379]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R380" flag="warning">[BIICORE-T15-R380]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R381" flag="warning">[BIICORE-T15-R381]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R382" flag="warning">[BIICORE-T15-R382]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R383" flag="warning">[BIICORE-T15-R383]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R384" flag="warning">[BIICORE-T15-R384]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R385" flag="warning">[BIICORE-T15-R385]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R386" flag="warning">[BIICORE-T15-R386]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R387" flag="warning">[BIICORE-T15-R387]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R388" flag="warning">[BIICORE-T15-R388]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R389" flag="warning">[BIICORE-T15-R389]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R390" flag="warning">[BIICORE-T15-R390]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R391" flag="warning">[BIICORE-T15-R391]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R392" flag="warning">[BIICORE-T15-R392]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R393" flag="warning">[BIICORE-T15-R393]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R394" flag="warning">[BIICORE-T15-R394]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R395" flag="warning">[BIICORE-T15-R395]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R396" flag="warning">[BIICORE-T15-R396]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
    <assert test="$BIICORE-T15-R397" flag="warning">[BIICORE-T15-R397]-A conformant CEN BII invoice core data model SHOULD not have data elements not in the core.</assert>
  </rule>
  <rule context="$Customer">
    <assert test="$BIICORE-T15-R398" flag="warning">[BIICORE-T15-R398]-Element 'PartyIdentification' may occur at maximum 1 times.</assert>
    <assert test="$BIICORE-T15-R399" flag="warning">[BIICORE-T15-R399]-Element 'PartyName' must occur exactly 1 times.</assert>
    <assert test="$BIICORE-T15-R400" flag="warning">[BIICORE-T15-R400]-Element 'PartyTaxScheme' may occur at maximum 1 times.</assert>
  </rule>
  <rule context="$Supplier">
    <assert test="$BIICORE-T15-R401" flag="warning">[BIICORE-T15-R401]-Element 'PartyIdentification' may occur at maximum 1 times.</assert>
    <assert test="$BIICORE-T15-R402" flag="warning">[BIICORE-T15-R402]-Element 'PartyName' must occur exactly 1 times.</assert>
    <assert test="$BIICORE-T15-R403" flag="warning">[BIICORE-T15-R403]-Element 'PostalAddress' must occur exactly 1 times.</assert>
    <assert test="$BIICORE-T15-R404" flag="warning">[BIICORE-T15-R404]-Element 'PartyTaxScheme' may occur at maximum 1 times.</assert>
  </rule>
  <rule context="$InvoiceLine">
    <assert test="$BIICORE-T15-R405" flag="warning">[BIICORE-T15-R405]-Element 'TaxTotal' may occur at maximum 1 times.</assert>
    <assert test="$BIICORE-T15-R406" flag="warning">[BIICORE-T15-R406]-Element 'Price' must occur exactly 1 times.</assert>
  </rule>
  <rule context="$Item">
    <assert test="$BIICORE-T15-R407" flag="warning">[BIICORE-T15-R407]-Element 'Description' may occur at maximum 1 times.</assert>
    <assert test="$BIICORE-T15-R408" flag="warning">[BIICORE-T15-R408]-Element 'Name' must occur exactly 1 times.</assert>
    <assert test="$BIICORE-T15-R409" flag="warning">[BIICORE-T15-R409]-Element 'ClassifiedTaxCategory' may occur at maximum 1 times.</assert>
  </rule>
  <rule context="$Price">
    <assert test="$BIICORE-T15-R410" flag="warning">[BIICORE-T15-R410]-Element 'AllowanceCharge' may occur at maximum 1 times.</assert>
  </rule>
  <rule context="$Monetary_Total">
    <assert test="$BIICORE-T15-R411" flag="warning">[BIICORE-T15-R411]-Element 'TaxExclusiveAmount' must occur exactly 1 times.</assert>
    <assert test="$BIICORE-T15-R412" flag="warning">[BIICORE-T15-R412]-Element 'TaxInclusiveAmount' must occur exactly 1 times.</assert>
  </rule>
  <rule context="$Payee">
    <assert test="$BIICORE-T15-R413" flag="warning">[BIICORE-T15-R413]-Element 'PartyIdentification' may occur at maximum 1 times.</assert>
    <assert test="$BIICORE-T15-R414" flag="warning">[BIICORE-T15-R414]-Element 'PartyName' may occur at maximum 1 times</assert>
  </rule>
  <rule context="$Financial_Account">
    <assert test="$BIICORE-T15-R415" flag="warning">[BIICORE-T15-R415]-Element 'ID' must occur exactly 1 times.</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIICORE-T15.sch?>
  <?DSDL_INCLUDE_START abstract/BIIPROFILES-T15.sch?><pattern abstract="true" id="BIIPROFILEST15">
  <rule context="$Invoice_Profile">
    <assert test="$BIIPROFILE-T15-R001" flag="fatal">[BIIPROFILE-T15-R001]-An invoice transaction T15 must only be used in CEN BII Profiles 5, 6, 7, 8, 13 or 19.</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIPROFILES-T15.sch?>
  <?DSDL_INCLUDE_START abstract/BIIRULES-T15.sch?><pattern abstract="true" id="BIIRULEST15">
  <rule context="$Total_Amounts">
    <assert test="$BIIRULE-T15-R011" flag="fatal">[BIIRULE-T15-R011]-Invoice total line extension amount MUST equal the sum of the line totals</assert>
    <assert test="$BIIRULE-T15-R012" flag="fatal">[BIIRULE-T15-R012]-An invoice tax exclusive amount MUST equal the sum of lines plus allowances and charges on header level.</assert>
    <assert test="$BIIRULE-T15-R013" flag="fatal">[BIIRULE-T15-R013]-An invoice tax inclusive amount MUST equal the tax exclusive amount plus all tax total amounts and the rounding amount.</assert>
    <assert test="$BIIRULE-T15-R014" flag="fatal">[BIIRULE-T15-R014]-Tax inclusive amount in an invoice MUST NOT be negative</assert>
    <assert test="$BIIRULE-T15-R015" flag="fatal">[BIIRULE-T15-R015]-Total allowance it MUST be equal to the sum of allowances at document level</assert>
    <assert test="$BIIRULE-T15-R016" flag="fatal">[BIIRULE-T15-R016]-Total charges it MUST be equal to the sum of document level charges.</assert>
    <assert test="$BIIRULE-T15-R017" flag="fatal">[BIIRULE-T15-R017]-Amount due is the tax inclusive amount minus what has been prepaid.</assert>
  </rule>
  <rule context="$Tax_Total">
    <assert test="$BIIRULE-T15-R009" flag="fatal">[BIIRULE-T15-R009]-An invoice MUST have a tax total refering to a single tax scheme</assert>
    <assert test="$BIIRULE-T15-R010" flag="fatal">[BIIRULE-T15-R010]-Each tax total MUST equal the sum of the subcategory amounts.</assert>
  </rule>
  <rule context="$Tax_Subtotal">
    <assert test="$BIIRULE-T15-R047" flag="fatal">[BIIRULE-T15-R047]-A corrective invoice MUST specify the taxable amount per tax subtotal.</assert>
    <assert test="$BIIRULE-T15-R048" flag="fatal">[BIIRULE-T15-R048]-A corrective invoice MUST specify the tax amount per tax subtotal.</assert>
  </rule>
  <rule context="$Tax_Scheme">
    <assert test="$BIIRULE-T15-R050" flag="fatal">[BIIRULE-T15-R050]-Every tax scheme MUST be defined through an identifier.</assert>
  </rule>
  <rule context="$Tax_Category">
    <assert test="$BIIRULE-T15-R049" flag="fatal">[BIIRULE-T15-R049]-Every tax category MUST be defined through an identifier.</assert>
  </rule>
  <rule context="$Supplier">
    <assert test="$BIIRULE-T15-R002" flag="warning">[BIIRULE-T15-R002]-A supplier address in an invoice SHOULD contain at least the city name and a zip code or have an address identifier.</assert>
    <assert test="$BIIRULE-T15-R003" flag="warning">[BIIRULE-T15-R003]-In cross border trade the VAT identifier for the supplier should be prefixed with country code.</assert>
  </rule>
  <rule context="$Payment_Means">
    <assert test="$BIIRULE-T15-R006" flag="warning">[BIIRULE-T15-R006]-Payment means due date in an invoice SHOULD be later or equal than issue date.</assert>
    <assert test="$BIIRULE-T15-R007" flag="warning">[BIIRULE-T15-R007]-If payment means is funds transfer, invoice MUST have a financial account</assert>
    <assert test="$BIIRULE-T15-R008" flag="warning">[BIIRULE-T15-R008]-If bank account is IBAN the BIC code SHOULD also be provided.</assert>
    <assert test="$BIIRULE-T15-R045" flag="fatal">[BIIRULE-T15-R045]-When specifying payment means, A corrective invoice MUST specify the payment coded.</assert>
  </rule>
  <rule context="$Party_Legal_Entity">
    <assert test="$BIIRULE-T15-R042" flag="fatal">[BIIRULE-T15-R042]-Company identifier MUST be specified when describing a company legal entity.</assert>
  </rule>
  <rule context="$Item_Price">
    <assert test="$BIIRULE-T15-R022" flag="fatal">[BIIRULE-T15-R022]-Prices of items MUST NOT be negative.</assert>
  </rule>
  <rule context="$Item">
    <assert test="$BIIRULE-T15-R019" flag="warning">[BIIRULE-T15-R019]-Product names SHOULD NOT exceed 50 characters long</assert>
    <assert test="$BIIRULE-T15-R020" flag="warning">[BIIRULE-T15-R020]-If standard identifiers are provided within an item description, an Scheme Identifier SHOULD be provided (e.g. GTIN)</assert>
    <assert test="$BIIRULE-T15-R021" flag="warning">[BIIRULE-T15-R021]-Classification codes within an item description SHOULD use a standard scheme for codes (e.g. CPV or UNSPSC)</assert>
  </rule>
  <rule context="$Invoice_Period">
    <assert test="$BIIRULE-T15-R001" flag="fatal">[BIIRULE-T15-R001]-A corrective invoice period end date MUST be later or equal to an invoice period start date</assert>
  </rule>
  <rule context="$Invoice_Line">
    <assert test="$BIIRULE-T15-R018" flag="fatal">[BIIRULE-T15-R018]-Invoice line amount MUST be equal to the price amount multiplied by the quantity plus charges minus allowances at line level</assert>
    <assert test="$BIIRULE-T15-R026" flag="fatal">[BIIRULE-T15-R026]-Each corrective invoice line MUST contain the product/service name</assert>
    <assert test="$BIIRULE-T15-R033" flag="fatal">[BIIRULE-T15-R033]-Corrective Invoice lines MUST have a line identifier.</assert>
    <assert test="$BIIRULE-T15-R051" flag="fatal">[BIIRULE-T15-R051]-Corrective Invoice lines MUST have a line total amount.</assert>
    <assert test="$BIIRULE-T15-R052" flag="fatal">[BIIRULE-T15-R052]-Corrective Invoice lines MUST contain the item price</assert>
  </rule>
  <rule context="$Invoice">
    <assert test="$BIIRULE-T15-R023" flag="fatal">[BIIRULE-T15-R023]-A corrective invoice MUST have a reference to an invoice. </assert>
    <assert test="$BIIRULE-T15-R024" flag="fatal">[BIIRULE-T15-R024]-A corrective invoice MUST have the date of issue.</assert>
    <assert test="$BIIRULE-T15-R025" flag="fatal">[BIIRULE-T15-R025]-A corrective invoice MUST have an invoice number.</assert>
    <assert test="$BIIRULE-T15-R027" flag="fatal">[BIIRULE-T15-R027]-A corrective invoice MUST contain the full name of the supplier.</assert>
    <assert test="$BIIRULE-T15-R028" flag="fatal">[BIIRULE-T15-R028]-A corrective invoice MUST contain the full name of the customer.</assert>
    <assert test="$BIIRULE-T15-R029" flag="fatal">[BIIRULE-T15-R029]-If the VAT total amount in an invoice exists then the sum of taxable amount in sub categories MUST equal the sum of invoice tax exclusive amount.</assert>
    <assert test="$BIIRULE-T15-R030" flag="fatal">[BIIRULE-T15-R030]-A corrective invoice MUST have a syntax identifier.</assert>
    <assert test="$BIIRULE-T15-R031" flag="fatal">[BIIRULE-T15-R031]-A corrective invoice MUST have a customization identifier.</assert>
    <assert test="$BIIRULE-T15-R032" flag="fatal">[BIIRULE-T15-R032]-A corrective invoice MUST have a profile identifier.</assert>
    <assert test="$BIIRULE-T15-R034" flag="fatal">[BIIRULE-T15-R034]-A corrective invoice MUST specify at least one line item.</assert>
    <assert test="$BIIRULE-T15-R035" flag="fatal">[BIIRULE-T15-R035]-A corrective invoice MUST have a currency code for the document.</assert>
    <assert test="$BIIRULE-T15-R036" flag="fatal">[BIIRULE-T15-R036]-Any reference to an order MUST specify the order identifier.</assert>
    <assert test="$BIIRULE-T15-R037" flag="fatal">[BIIRULE-T15-R037]-Any reference to a contract MUST specify the contract identifier.</assert>
    <assert test="$BIIRULE-T15-R039" flag="fatal">[BIIRULE-T15-R039]-A corrective invoice MUST specify the total payable amount.</assert>
    <assert test="$BIIRULE-T15-R040" flag="fatal">[BIIRULE-T15-R040]-A corrective invoice MUST specify the total amount with taxes included.</assert>
    <assert test="$BIIRULE-T15-R043" flag="fatal">[BIIRULE-T15-R043]-A corrective invoice MUST specify the total amount without taxes.</assert>
    <assert test="$BIIRULE-T15-R044" flag="fatal">[BIIRULE-T15-R044]-A corrective invoice MUST specify the sum of the line amounts.</assert>
    <assert test="$BIIRULE-T15-R053" flag="fatal">[BIIRULE-T15-R053]-A corrective invoice MUST contain tax information</assert>
  </rule>
  <rule context="$Customer">
    <assert test="$BIIRULE-T15-R004" flag="warning">[BIIRULE-T15-R004]-A customer address in an invoice SHOULD contain at least city and zip code or have an address identifier.</assert>
    <assert test="$BIIRULE-T15-R005" flag="warning">[BIIRULE-T15-R005]-In cross border trade the VAT identifier for the customer should be prefixed with country code.</assert>
  </rule>
  <rule context="$Country">
    <assert test="$BIIRULE-T15-R041" flag="fatal">[BIIRULE-T15-R041]-Country in an address MUST be specified using the country code.</assert>
  </rule>
  <rule context="$Annex">
    <assert test="$BIIRULE-T15-R038" flag="fatal">[BIIRULE-T15-R038]-For any document referred in an invoice, A corrective invoice MUST specify the document identifier.</assert>
    <assert test="$BIIRULE-T15-R046" flag="fatal">[BIIRULE-T15-R046]-Any reference to a document MUST specify the document identifier.</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T15.sch?>
  <?DSDL_INCLUDE_START abstract/EUGEN-T15.sch?><pattern abstract="true" id="EUGENT15">
  <rule context="$Total_Amounts">
    <assert test="$EUGEN-T15-R019" flag="fatal">[EUGEN-T15-R019]-Total payable amount in an invoice MUST NOT be negative</assert>
  </rule>
  <rule context="$Tax_Subtotal">
    <assert test="$EUGEN-T15-R009" flag="warning">[EUGEN-T15-R009]-If the category for VAT is exempt (E) then an exemption reason SHOULD be provided.</assert>
  </rule>
  <rule context="$Tax_Category">
    <assert test="$EUGEN-T15-R008" flag="fatal">[EUGEN-T15-R008]-For each tax subcategory the category ID and the applicable tax percentage MUST be provided.</assert>
  </rule>
  <rule context="$Supplier_Party">
    <assert test="$EUGEN-T15-R001" flag="warning">[EUGEN-T15-R001]-A supplier postal address in an invoice SHOULD contain at least, Street name and number, city name, zip code and country code.</assert>
  </rule>
  <rule context="$Payment_Means">
    <assert test="$EUGEN-T15-R004" flag="warning">[EUGEN-T15-R004]-If the payment means are international account transfer and the account id is IBAN then the financial institution should be identified by using the BIC id.</assert>
  </rule>
  <rule context="$Invoice_Period">
    <assert test="$EUGEN-T15-R020" flag="fatal">[EUGEN-T15-R020]-If the invoice refers to a period, the period MUST have an start date.</assert>
    <assert test="$EUGEN-T15-R021" flag="fatal">[EUGEN-T15-R021]-If the invoice refers to a period, the period MUST have an end date.</assert>
  </rule>
  <rule context="$Invoice_Line">
    <assert test="$EUGEN-T15-R003" flag="warning">[EUGEN-T15-R003]-Each invoice line SHOULD contain the quantity and unit of measure</assert>
  </rule>
  <rule context="$Invoice">
    <assert test="$EUGEN-T15-R007" flag="fatal">[EUGEN-T15-R007]-If the VAT total amount in an invoice exists it MUST contain the suppliers VAT number.</assert>
    <assert test="$EUGEN-T15-R010" flag="fatal">[EUGEN-T15-R010]-If payee information is provided then the payee name MUST be specified.</assert>
    <assert test="$EUGEN-T15-R015" flag="fatal">[EUGEN-T15-R015]-IF VAT = "AE" (reverse charge) THEN it MUST contain Supplier VAT id and Customer VAT</assert>
    <assert test="$EUGEN-T15-R016" flag="fatal">[EUGEN-T15-R016]-IF VAT = "AE" (reverse charge) THEN VAT MAY NOT contain other VAT categories.</assert>
    <assert test="$EUGEN-T15-R017" flag="fatal">[EUGEN-T15-R017]-IF VAT = "AE" (reverse charge) THEN The taxable amount MUST equal the invoice total without VAT amount.</assert>
    <assert test="$EUGEN-T15-R018" flag="fatal">[EUGEN-T15-R018]-IF VAT = "AE" (reverse charge) THEN VAT tax amount MUST be zero.</assert>
    <assert test="$EUGEN-T15-R024" flag="fatal">[EUGEN-T15-R024]-Currency Identifier MUST be in stated in the currency stated on header level.</assert>
  </rule>
  <rule context="$Delivery_Address">
    <assert test="$EUGEN-T15-R005" flag="warning">[EUGEN-T15-R005]-A Delivery address in an SHOULD contain at least, city, zip code and country code.</assert>
  </rule>
  <rule context="$Customer_Party">
    <assert test="$EUGEN-T15-R002" flag="warning">[EUGEN-T15-R002]-A customer postal address in an invoice SHOULD contain at least, Street name and number, city name, zip code and country code.</assert>
  </rule>
  <rule context="$Classified_Tax_Category">
    <assert test="$EUGEN-T15-R011" flag="fatal">[EUGEN-T15-R011]-If the VAT total amount in an invoice exists then each invoice line item must have a VAT category ID.</assert>
  </rule>
  <rule context="$Allowance_Charge">
    <assert test="$EUGEN-T15-R006" flag="fatal">[EUGEN-T15-R006]-If the VAT total amount in an invoice exists then an Allowances Charges amount on document level MUST have Tax category for VAT.</assert>
    <assert test="$EUGEN-T15-R022" flag="fatal">[EUGEN-T15-R022]-An allowance or charge amount MUST NOT be negative.</assert>
    <assert test="$EUGEN-T15-R023" flag="warning">[EUGEN-T15-R023]-AllowanceChargeReason text SHOULD be specified for all allowances and charges</assert>
    <assert test="$EUGEN-T15-R012" flag="fatal">[EUGEN-T15-R012]-An allowance percentage MUST NOT be negative.</assert>
    <assert test="$EUGEN-T15-R013" flag="warning">[EUGEN-T15-R013]-In allowances, both or none of percentage and base amount SHOULD be provided</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/EUGEN-T15.sch?>
  <?DSDL_INCLUDE_START abstract/NONAT-T15.sch?><pattern abstract="true" id="NONATT15">
  <rule context="$Supplier_Party">
    <assert test="$NONAT-T15-R001" flag="fatal">[NONAT-T15-R001]-The Norwegian legal registration ID for the supplier MUST be provided according to "FOR 2004-12-01 nr 1558 - § 5-1-1. Point 2"</assert>
    <assert test="$NONAT-T15-R006" flag="fatal">[NONAT-T15-R006]-A supplier postal address in an invoice MUST contain at least, Street name, city name, zip code and country code.</assert>
  </rule>
  <rule context="$Invoice_Line">
    <assert test="$NONAT-T15-R005" flag="fatal">[NONAT-T15-R005]-Each invoice line MUST contain a quantity according to "FOR 2004-12-01 nr 1558 - § 5-1-1. Point 3" </assert>
  </rule>
  <rule context="$Invoice">
    <assert test="$NONAT-T15-R002" flag="fatal">[NONAT-T15-R002]-Payment due date MUST be provided in the invoice according to "FOR 2004-12-01 nr 1558 - § 5-1-1. Point 5" </assert>
    <assert test="$NONAT-T15-R003" flag="fatal">[NONAT-T15-R003]-The actual delivery date  MUST be provided in the invoice according to "FOR 2004-12-01 nr 1558 - § 5-1-1. Point 4" </assert>
    <assert test="$NONAT-T15-R004" flag="fatal">[NONAT-T15-R004]-A Delivery address in an invoice MUST contain at least, city, zip code and country code according to "FOR 2004-12-01 nr 1558 - § 5-1-1. Point 4"</assert>
  </rule>
  <rule context="$Customer_Party">
    <assert test="$NONAT-T15-R007" flag="fatal">[NONAT-T15-R007]-A customer postal address in an invoice MUST contain at least, Street name, city name, zip code and country code.</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/NONAT-T15.sch?>
  <?DSDL_INCLUDE_START abstract/NOGOV-T15.sch?><pattern abstract="true" id="NOGOVT15">
  <rule context="$Supplier_Party">
    <assert test="$NOGOV-T15-R001" flag="warning">[NOGOV-T15-R001]-A contact reference identifier SHOULD be provided for AccountingSupplierParty according to EHF.</assert>
    <assert test="$NOGOV-T15-R014" flag="fatal">[NOGOV-T15-R014]-Country code for the supplier address MUST be provided according to EHF.</assert>
  </rule>
  <rule context="$Payment_Means">
    <assert test="$NOGOV-T15-R011" flag="warning">[NOGOV-T15-R011]-PayeeFinancialAccount SHOULD be provided  according EHF.</assert>
    <assert test="$NOGOV-T15-R012" flag="warning">[NOGOV-T15-R012]-Payment Identifier (KID number) SHOULD be used according to EHF.</assert>
  </rule>
  <rule context="$Order_Reference">
    <assert test="$NOGOV-T15-R013" flag="warning">[NOGOV-T15-R013]-An association to Order Reference SHOULD be provided according to EHF.</assert>
  </rule>
  <rule context="$Item">
    <assert test="$NOGOV-T15-R002" flag="warning">[NOGOV-T15-R002]-The sellers ID for the item SHOULD be provided according to EHF.</assert>
    <assert test="$NOGOV-T15-R008" flag="fatal">[NOGOV-T15-R008]-The item's tax rate, expressed as a percentage MUST be provided according to EHF.</assert>
  </rule>
  <rule context="$Invoice_Line">
    <assert test="$NOGOV-T15-R003" flag="warning">[NOGOV-T15-R003]-The buyer's accounting code applied to the Invoice Line SHOULD be provided according to EHF.</assert>
    <assert test="$NOGOV-T15-R004" flag="warning">[NOGOV-T15-R004]-An association to Order Line Reference SHOULD be provided according to EHF.</assert>
    <assert test="$NOGOV-T15-R010" flag="warning">[NOGOV-T15-R010]-The unit qualifier of the invoiced quantity SHOULD be provided according to EHF.</assert>
  </rule>
  <rule context="$Invoice">
    <assert test="$NOGOV-T15-R005" flag="warning">[NOGOV-T15-R005]-ContractDocumentReference SHOULD be provided according to EHF.</assert>
  </rule>
  <rule context="$Customer_Party">
    <assert test="$NOGOV-T15-R006" flag="warning">[NOGOV-T15-R006]-A customer number for AccountingCustomerParty SHOULD be provided according to EHF.</assert>
    <assert test="$NOGOV-T15-R007" flag="fatal">[NOGOV-T15-R007]-A contact reference identifier MUST be provided for AccountingCustomerParty according to EHF.</assert>
    <assert test="$NOGOV-T15-R009" flag="fatal">[NOGOV-T15-R009]-PartyLegalEntity for AccountingCustomerParty MUST be provided according to EHF.</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/NOGOV-T15.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/BIICORE-UBL-T15.sch?><pattern id="BIICOREUBL-T15" is-a="BIICORET15">
  <param value="contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0')" name="BIICORE-T15-R000"/>
  <param value="not(count(//*[not(text())]) &gt; 0)" name="BIICORE-T15-R001"/>
  <param value="not(cbc:CopyIndicator)  and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R002"/>
  <param value="not(cbc:UUID)  and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R003"/>
  <param value="not(cbc:IssueTime)  and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R004"/>
  <param value="not(cbc:TaxCurrencyCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R005"/>
  <param value="not(cbc:PricingCurrencyCode)  and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R006"/>
  <param value="not(cbc:PaymentCurrencyCode)  and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R007"/>
  <param value="not(cbc:PaymentAlternativeCurrencyCode)  and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R008"/>
  <param value="not(cbc:AccountingCostCode)  and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R009"/>
  <param value="not(cbc:LineCountNumeric) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R010"/>
  <param value="not(cac:BillingReference/cac:SelfBilledInvoiceDocumentReference) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R011"/>
  <param value="not(cac:DespatchDocumentReference)  and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R012"/>
  <param value="not(cac:ReceiptDocumentReference) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R013"/>
  <param value="not(cac:OriginatorDocumentReference) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R014"/>
  <param value="not(cac:Signature) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R015"/>
  <param value="not(cac:BuyerCustomerParty) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R016"/>
  <param value="not(cac:SellerSupplierParty) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R017"/>
  <param value="not(cac:TaxRepresentativeParty) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R018"/>
  <param value="not(cac:DeliveryTerms) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R019"/>
  <param value="not(cac:PrepaidPayment) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R020"/>
  <param value="not(cac:TaxExchangeRate) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R021"/>
  <param value="not(cac:PricingExchangeRate) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R022"/>
  <param value="not(cac:PaymentExchangeRate) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R023"/>
  <param value="not(cac:PaymentAlternativeExchangeRate) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R024"/>
  <param value="not(cac:InvoicePeriod/cbc:StartTime) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R025"/>
  <param value="not(cac:InvoicePeriod/cbc:EndTime) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R026"/>
  <param value="not(cac:InvoicePeriod/cbc:DurationMeasure) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R027"/>
  <param value="not(cac:InvoicePeriod/cbc:Description) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R028"/>
  <param value="not(cac:InvoicePeriod/cbc:DescriptionCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R029"/>
  <param value="not(cac:OrderReference/cbc:SalesOrderID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R030"/>
  <param value="not(cac:OrderReference/cbc:CopyIndicator)  and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R031"/>
  <param value="not(cac:OrderReference/cbc:UUID)  and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R032"/>
  <param value="not(cac:OrderReference/cbc:IssueDate)  and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R033"/>
  <param value="not(cac:OrderReference/cbc:IssueTime)  and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R034"/>
  <param value="not(cac:OrderReference/cbc:CustomerReference) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R035"/>
  <param value="not(cac:OrderReference/cac:DocumentReference) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R036"/>
  <param value="not(cac:ContractDocumentReference/cbc:CooyIndicator) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R037"/>
  <param value="not(cac:ContractDocumentReference/cbc:UUID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R038"/>
  <param value="not(cac:ContractDocumentReference/cbc:IssueDate) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R039"/>
  <param value="not(cac:ContractDocumentReference/cbc:DocumentTypeCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R040"/>
  <param value="not(cac:ContractDocumentReference/cbc:XPath) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R041"/>
  <param value="not(cac:ContractDocumentReference/cac:Attachment) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R042"/>
  <param value="not(cac:AdditionalDocumentReference/cbc:CopyIndicator) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R043"/>
  <param value="not(cac:AdditionalDocumentReference/cbc:UUID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R044"/>
  <param value="not(cac:AdditionalDocumentReference/cbc:IssueDate) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R045"/>
  <param value="not(cac:AdditionalDocumentReference/cbc:DocumentTypeCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R046"/>
  <param value="not(cac:AdditionalDocumentReference/cbc:XPath) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R047"/>
  <param value="not(cac:AdditionalDocumentReference/cac:Attachment/cac:ExternalReference/cbc:DocumentHash) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R048"/>
  <param value="not(cac:AdditionalDocumentReference/cac:Attachment/cac:ExternalReference/cbc:ExpiryDate) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R049"/>
  <param value="not(cac:AdditionalDocumentReference/cac:Attachment/cac:ExternalReference/cbc:ExpiryTime) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R050"/>
  <param value="not(cac:AccountingSupplierParty/cbc:CustomerAssignedAccountID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R051"/>
  <param value="not(cac:AccountingSupplierParty/cbc:AdditionalAccountID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R052"/>
  <param value="not(cac:AccountingSupplierParty/cbc:DataSendingCapability) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R053"/>
  <param value="not(cac:AccountingSupplierParty/cac:DespatchContact) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R054"/>
  <param value="not(cac:AccountingSupplierParty/cac:AccountingContact) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R055"/>
  <param value="not(cac:AccountingSupplierParty/cac:SellerContact) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R056"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cbc:MarkCareIndicator) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R057"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cbc:MarkAttentionIndicator) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R058"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cbc:WebsiteURI) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R059"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cbc:LogoReferenceID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R060"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:Language) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R061"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:AddressTypeCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R062"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:AddressFormatCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R063"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:Floor) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R064"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:Room) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R065"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:BlockName) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R066"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:BuildingName) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R067"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:InhouseMail) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R068"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:MarkAttention) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R069"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:MarkCare) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R070"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:PlotIdentification) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R071"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:CitySubdivisionName) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R072"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:Region) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R073"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:District) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R074"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:TimezoneOffset) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R075"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:AddressLine) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R076"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:Name) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R077"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:LocationCoordinate) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R078"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PhysicalLocation) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R079"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cbc:RegistrationName) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R080"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cbc:TaxLevelCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R081"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cbc:ExemptionReasonCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R082"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cbc:ExemptionReason) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R083"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cac:RegistrationAddress) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R084"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:Name) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R085"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:TaxTypeCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R086"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:CurrencyCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R087"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cac:JurisdictionRegionAddress) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R088"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:AddressTypeCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R089"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:AddressFormatCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R090"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Postbox) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R091"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Floor) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R092"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Room) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R093"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:StreetName) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R094"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:AdditionalStreetName) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R095"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:BlockName) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R096"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:BuildingName) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R097"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:BuildingNumber) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R098"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:InhouseMail) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R099"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Department) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R100"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:MarkAttention) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R101"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:MarkCare) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R102"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:PlotIdentification) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R103"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CitySubdivisionName) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R104"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:PostalZone) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R105"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CountrySubentityCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R106"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Region) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R107"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:District) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R108"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:TimezoneOffset) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R109"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cac:AddressLine) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R110"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cac:Country/cbc:Name) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R111"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cac:LocationCoordinate) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R112"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:CorporateRegistrationScheme) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R113"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Name) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R115"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Note) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R116"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:Contact/cac:OtherCommunication) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R117"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:Person/cbc:Title) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R118"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:Person/cbc:NameSuffix) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R119"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:Person/cbc:OrganizationDepartment) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R120"/>
  <param value="not(cac:AccountingSupplierParty/cac:Party/cac:AgentParty) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R121"/>
  <param value="not(cac:AccountingCustomerParty/cbc:SupplierAssignedAccountID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R122"/>
  <param value="not(cac:AccountingCustomerParty/cbc:CustomerAssignedAccountID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R123"/>
  <param value="not(cac:AccountingCustomerParty/cbc:AdditionalAccountID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R124"/>
  <param value="not(cac:AccountingCustomerParty/cac:DeliveryContact) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R125"/>
  <param value="not(cac:AccountingCustomerParty/cac:AccountingContact) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R126"/>
  <param value="not(cac:AccountingCustomerParty/cac:BuyerContact) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R127"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cbc:MarkCareIndicator) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R128"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cbc:MarkAttentionIndicator) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R129"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cbc:WebsiteURI) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R130"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cbc:LogoReferenceID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R131"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:Language) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R132"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:AddressTypeCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R133"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:AddressFormatCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R134"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:Floor) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R135"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:Room) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R136"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:BlockName) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R137"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:BuildingName) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R138"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:InhouseMail) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R139"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:MarkAttention) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R140"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:MarkCare) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R141"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:PlotIdentification) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R142"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:CitySubdivisionName) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R143"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:Region) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R144"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:District) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R145"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:TimezoneOffset) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R146"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:AddressLine) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R147"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:Name) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R148"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:LocationCoordinate) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R149"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PhysicalLocation) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R150"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cbc:RegistrationName) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R151"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cbc:TaxLevelCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R152"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cbc:ExemptionReasonCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R153"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cbc:ExemptionReason) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R154"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:RegistrationAddress) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R155"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:Name) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R156"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:TaxTypeCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R157"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:CurrencyCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R158"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cac:JurisdictionRegionAddress) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R159"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:AddressTypeCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R160"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:AddressFormatCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R161"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Postbox) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R162"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Floor) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R163"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Room) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R164"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:StreetName) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R165"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:AdditionalStreetName) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R166"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:BlockName) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R167"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:BuildingName) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R168"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:BuildingNumber) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R169"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:InhouseMail) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R170"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Department) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R171"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:MarkAttention) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R172"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:MarkCare) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R173"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:PlotIdentification) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R174"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CitySubdivisionName) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R175"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:PostalZone) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R176"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CountrySubentityCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R177"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Region) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R178"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:District) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R179"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:TimezoneOffset) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R180"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cac:AddressLine) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R181"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cac:Country/cbc:Name) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R182"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cac:LocationCoordinate) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R183"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:CorporateRegistrationScheme) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R184"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:Name) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R186"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:Note) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R187"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:Contact/cac:OtherCommunication) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R188"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:Person/cbc:Title) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R189"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:Person/cbc:NameSuffix) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R190"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:Person/cbc:OrganizationDepartment) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R191"/>
  <param value="not(cac:AccountingCustomerParty/cac:Party/cac:AgentParty) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R192"/>
  <param value="not(cac:PayeeParty/cbc:MarkCareIndicator) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R193"/>
  <param value="not(cac:PayeeParty/cbc:MarkAttentionIndicator) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R194"/>
  <param value="not(cac:PayeeParty/cbc:WebsiteURI) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R195"/>
  <param value="not(cac:PayeeParty/cbc:LogoReferenceID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R196"/>
  <param value="not(cac:PayeeParty/cac:Language) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R197"/>
  <param value="not(cac:PayeeParty/cac:PostalAddress) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R198"/>
  <param value="not(cac:PayeeParty/cac:PhysicalLocation) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R199"/>
  <param value="not(cac:PayeeParty/cac:PartyTaxScheme) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R200"/>
  <param value="not(cac:PayeeParty/cac:PartyLegalEntity/cbc:RegistrationName) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R201"/>
  <param value="not(cac:PayeeParty/cac:PartyLegalEntity/cac:RegistrationAddress) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R202"/>
  <param value="not(cac:PayeeParty/cac:PartyLegalEntity/cac:CorporateRegistrationScheme) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R203"/>
  <param value="not(cac:PayeeParty/cac:Contact) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R204"/>
  <param value="not(cac:PayeeParty/cac:Person) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R205"/>
  <param value="not(cac:PayeeParty/cac:AgentParty) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R206"/>
  <param value="not(cac:Delivery/cbc:ID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R207"/>
  <param value="not(cac:Delivery/cbc:Quantity) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R208"/>
  <param value="not(cac:Delivery/cbc:MinimumQuantity) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R209"/>
  <param value="not(cac:Delivery/cbc:MaximumQuantity) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R210"/>
  <param value="not(cac:Delivery/cbc:ActualDeliveryTime) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R211"/>
  <param value="not(cac:Delivery/cbc:LatestDeliveryDate) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R212"/>
  <param value="not(cac:Delivery/cbc:LatestDeliveryTime) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R213"/>
  <param value="not(cac:Delivery/cbc:TrackingID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R214"/>
  <param value="not(cac:Delivery/cac:DeliveryAddress) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R215"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cbc:Description) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R216"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cbc:Conditions) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R217"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cbc:CountrySubentity) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R218"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cbc:CountrySubentityCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R219"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cac:ValidityPeriod) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R220"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:AddressTypeCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R221"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:AddressFormatCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R222"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:Floor) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R223"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:Room) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R224"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:BlockName) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R225"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:BuildingName) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R226"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:InhouseMail) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R227"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:Department) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R228"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:MarkAttention) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R229"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:MarkCare) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R230"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:PlotIdentification) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R231"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:CitySubdivisionName) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R232"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:CountrySubentityCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R233"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:Region) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R234"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:District) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R235"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:TimezoneOffset) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R236"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cac:AddressLine) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R237"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cac:Country/cbc:Name) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R238"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cac:LocationCoordinate) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R239"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cac:RequestedDeliveryPeriod) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R240"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cac:PromisedDeliveryPeriod) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R241"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cac:EstimatedDeliveryPeriod) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R242"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cac:DeliveryParty) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R243"/>
  <param value="not(cac:Delivery/cac:DeliveryLocation/cac:Despatch) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R244"/>
  <param value="not(cac:PaymentMeans/cbc:ID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R245"/>
  <param value="not(cac:PaymentMeans/cbc:InstructionID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R246"/>
  <param value="not(cac:PaymentMeans/cbc:InstructionNote) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R247"/>
  <param value="not(cac:PaymentMeans/cac:CardAccount) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R248"/>
  <param value="not(cac:PaymentMeans/cac:PayerFinancialAccount) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R249"/>
  <param value="not(cac:PaymentMeans/cac:CreditAccount) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R250"/>
  <param value="not(cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:Name) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R251"/>
  <param value="not(cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:AccountTypeCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R252"/>
  <param value="not(cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:CurrencyCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R253"/>
  <param value="not(cac:PaymentMeans/cac:PayeeFinancialAccount/cac:Country) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R254"/>
  <param value="not(cac:PaymentMeans/cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cbc:Name) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R255"/>
  <param value="not(cac:PaymentMeans/cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cac:Address) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R256"/>
  <param value="not(cac:PaymentMeans/cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cac:FinancialInstitution/cbc:Name) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R257"/>
  <param value="not(cac:PaymentMeans/cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cac:FinancialInstitution/cac:Address) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R258"/>
  <param value="not(cac:PaymentTerms/cbc:ID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R259"/>
  <param value="not(cac:PaymentTerms/cbc:PaymentMeansID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R260"/>
  <param value="not(cac:PaymentTerms/cbc:PrepaidPaymentReferenceID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R261"/>
  <param value="not(cac:PaymentTerms/cbc:ReferenceEventCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R262"/>
  <param value="not(cac:PaymentTerms/cbc:SettlementDiscountPercent) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R263"/>
  <param value="not(cac:PaymentTerms/cbc:PenaltySurchargePercent) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R264"/>
  <param value="not(cac:PaymentTerms/cbc:Amount) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R265"/>
  <param value="not(cac:PaymentTerms/cac:SettlementPeriod) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R266"/>
  <param value="not(cac:PaymentTerms/cac:PenaltyPeriod) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R267"/>
  <param value="not(cac:AllowanceCharge/cbc:ID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R268"/>
  <param value="not(cac:AllowanceCharge/cbc:AllowanceChargeReasonCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R269"/>
  <param value="not(cac:AllowanceCharge/cbc:MultiplierFactorNumeric) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R270"/>
  <param value="not(cac:AllowanceCharge/cbc:PrepaidIndicator) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R271"/>
  <param value="not(cac:AllowanceCharge/cbc:SequenceNumeric) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R272"/>
  <param value="not(cac:AllowanceCharge/cbc:BaseAmount) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R273"/>
  <param value="not(cac:AllowanceCharge/cbc:AccountingCostCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R274"/>
  <param value="not(cac:AllowanceCharge/cbc:AccountingCost) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R275"/>
  <param value="not(cac:AllowanceCharge/cac:TaxCategory/cbc:Name) or not(cac:AllowanceCharge/cac:TaxCategory/cbc:Percent) or not(cac:AllowanceCharge/cac:TaxCategory/cbc:BaseUnitMeasure) or not(cac:AllowanceCharge/cac:TaxCategory/cbc:PerUnitAmount) or not(cac:AllowanceCharge/cac:TaxCategory/cbc:TaxExemptionReasonCode) or not(cac:AllowanceCharge/cac:TaxCategory/cbc:TaxExemptionReason) or not(cac:AllowanceCharge/cac:TaxCategory/cbc:TierRange) or not(cac:AllowanceCharge/cac:TaxCategory/cbc:TierRatePercent) or not(cac:AllowanceCharge/cac:TaxCategory/cac:TaxScheme/cbc:Name) or not(cac:AllowanceCharge/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode) or not(cac:AllowanceCharge/cac:TaxCategory/cac:TaxScheme/cbc:CurrencyCode) or not(cac:AllowanceCharge/cac:TaxCategory/cac:TaxScheme/cac:JurisdictionRegionAddress) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R276"/>
  <param value="not(cac:AllowanceCharge/cac:TaxTotal) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R277"/>
  <param value="not(cac:AllowanceCharge/cac:PaymentMeans) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R278"/>
  <param value="not(cac:TaxTotal/cbc:RoundingAmount) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R279"/>
  <param value="not(cac:TaxTotal/cbc:TaxEvidenceIndicator) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R280"/>
  <param value="not(cac:TaxTotal/cac:TaxSubtotal/cbc:CalculationSequenceNumeric) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R281"/>
  <param value="not(cac:TaxTotal/cac:TaxSubtotal/cbc:TransactionCurrencyTaxAmount) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R282"/>
  <param value="not(cac:TaxTotal/cac:TaxSubtotal/cbc:Percent) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R283"/>
  <param value="not(cac:TaxTotal/cac:TaxSubtotal/cbc:BaseUnitMeasure) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R284"/>
  <param value="not(cac:TaxTotal/cac:TaxSubtotal/cbc:PerUnitAmount) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R285"/>
  <param value="not(cac:TaxTotal/cac:TaxSubtotal/cbc:TierRange) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R286"/>
  <param value="not(cac:TaxTotal/cac:TaxSubtotal/cbc:TierRatePercent) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R287"/>
  <param value="not(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:Name) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R288"/>
  <param value="not(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:BaseUnitMeasure) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R289"/>
  <param value="not(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:PerUnitAmount) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R290"/>
  <param value="not(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TierRange) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R291"/>
  <param value="not(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TierRatePercent) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R292"/>
  <param value="not(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:Name) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R293"/>
  <param value="not(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R294"/>
  <param value="not(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:CurrencyCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R295"/>
  <param value="not(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cac:JurisdictionRegionAddress) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R296"/>
  <param value="not(cac:InvoiceLine/cbc:UUID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R297"/>
  <param value="not(cac:InvoiceLine/cbc:TaxPointDate) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R298"/>
  <param value="not(cac:InvoiceLine/cbc:AccountingCostCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R299"/>
  <param value="not(cac:InvoiceLine/cbc:FreeOfChargeIndicator) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R300"/>
  <param value="not(cac:InvoiceLine/cac:OrderLineReference/cbc:SalesOrderLineID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R301"/>
  <param value="not(cac:InvoiceLine/cac:DespatchLineReference) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R302"/>
  <param value="not(cac:InvoiceLine/cac:ReceiptLineReference) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R303"/>
  <param value="not(cac:InvoiceLine/cac:BillingReference) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R304"/>
  <param value="not(cac:InvoiceLine/cac:DocumentReference) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R305"/>
  <param value="not(cac:InvoiceLine/cac:PricingReference) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R306"/>
  <param value="not(cac:InvoiceLine/cac:OriginatorParty) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R307"/>
  <param value="not(cac:InvoiceLine/cac:Delivery) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R308"/>
  <param value="not(cac:InvoiceLine/cac:PaymentTerms) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R309"/>
  <param value="not(cac:InvoiceLine/cac:AllowanceCharge/cbc:ID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R310"/>
  <param value="not(cac:InvoiceLine/cac:AllowanceCharge/cbc:AllowanceChargeReasonCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R311"/>
  <param value="not(cac:InvoiceLine/cac:AllowanceCharge/cbc:MultiplierFactorNumeric) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R312"/>
  <param value="not(cac:InvoiceLine/cac:AllowanceCharge/cbc:PrepaidIndicator) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R313"/>
  <param value="not(cac:InvoiceLine/cac:AllowanceCharge/cbc:SequenceNumeric) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R314"/>
  <param value="not(cac:InvoiceLine/cac:AllowanceCharge/cbc:BaseAmount) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R315"/>
  <param value="not(cac:InvoiceLine/cac:AllowanceCharge/cbc:AccountingCostCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R316"/>
  <param value="not(cac:InvoiceLine/cac:AllowanceCharge/cbc:AccountingCost) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R317"/>
  <param value="not(cac:InvoiceLine/cac:AllowanceCharge/cac:TaxCategory/cbc:Name) or not(cac:InvoiceLine/cac:AllowanceCharge/cac:TaxCategory/cbc:Percent) or not(cac:InvoiceLine/cac:AllowanceCharge/cac:TaxCategory/cbc:BaseUnitMeasure) or not(cac:InvoiceLine/cac:AllowanceCharge/cac:TaxCategory/cbc:PerUnitAmount) or not(cac:InvoiceLine/cac:AllowanceCharge/cac:TaxCategory/cbc:TaxExemptionReasonCode) or not(cac:InvoiceLine/cac:AllowanceCharge/cac:TaxCategory/cbc:TaxExemptionReason) or not(cac:InvoiceLine/cac:AllowanceCharge/cac:TaxCategory/cbc:TierRange) or not(cac:InvoiceLine/cac:AllowanceCharge/cac:TaxCategory/cbc:TierRatePercent) or not(cac:InvoiceLine/cac:AllowanceCharge/cac:TaxCategory/cac:TaxScheme/cbc:Name) or not(cac:InvoiceLine/cac:AllowanceCharge/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode) or not(cac:InvoiceLine/cac:AllowanceCharge/cac:TaxCategory/cac:TaxScheme/cbc:CurrencyCode) or not(cac:InvoiceLine/cac:AllowanceCharge/cac:TaxCategory/cac:TaxScheme/cac:JurisdictionRegionAddress) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R318"/>
  <param value="not(cac:InvoiceLine/cac:AllowanceCharge/cac:TaxTotal) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R319"/>
  <param value="not(cac:InvoiceLine/cac:AllowanceCharge/cac:PaymentMeans) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R320"/>
  <param value="not(cac:InvoiceLine/cac:TaxTotal/cbc:RoundingAmount) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R321"/>
  <param value="not(cac:InvoiceLine/cac:TaxTotal/cbc:TaxEvidenceIndicator) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R322"/>
  <param value="not(cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R323"/>
  <param value="not(cac:InvoiceLine/cac:Item/cbc:PackQuantity) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R324"/>
  <param value="not(cac:InvoiceLine/cac:Item/cbc:PackSizeNumeric) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R325"/>
  <param value="not(cac:InvoiceLine/cac:Item/cbc:CatalogueIndicator) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R326"/>
  <param value="not(cac:InvoiceLine/cac:Item/cbc:HazardousRiskIndicator) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R327"/>
  <param value="not(cac:InvoiceLine/cac:Item/cbc:AdditionalInformation) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R328"/>
  <param value="not(cac:InvoiceLine/cac:Item/cbc:Keyword) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R329"/>
  <param value="not(cac:InvoiceLine/cac:Item/cbc:BrandName) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R330"/>
  <param value="not(cac:InvoiceLine/cac:Item/cbc:ModelName) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R331"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:SellersItemIdentification/cbc:ExtendedID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R332"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:SellersItemIdentification/cbc:PhysycalAttribute) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R333"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:SellersItemIdentification/cbc:MeasurementDimension) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R334"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:SellersItemIdentification/cbc:IssuerParty) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R335"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:StandardItemIdentification/cbc:ExtendedID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R336"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:StandardItemIdentification/cbc:PhysycalAttribute) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R337"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:StandardItemIdentification/cbc:MeasurementDimension) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R338"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:StandardItemIdentification/cbc:IssuerParty) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R339"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:BuyersItemIdentification) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R340"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:CommodityClassification/cbc:NatureCargo) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R341"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:CommodityClassification/cbc:CargoTypeCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R342"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:CommodityClassification/cbc:CommodityCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R343"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:ManufacturersItemIdentification) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R344"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:CatalogueItemIdentification) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R345"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:AdditionalItemIdentification) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R346"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:CatalogueDocumentReference) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R347"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:ItemSpecificationDocumentReference) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R348"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:OriginCountry) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R349"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:TransactionConditions) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R350"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:HazardousItem) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R351"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:ManufacturerParty) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R352"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:InformationContentProviderParty) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R353"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:OriginAddress) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R354"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:ItemInstance) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R355"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:TaxCategory/cbc:Name) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R356"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:TaxCategory/cbc:BaseUnitMeasure) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R357"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:TaxCategory/cbcPerUnitAmount) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R358"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:TaxCategory/cbc:TaxExemptionReasonCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R359"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:TaxCategory/cbc:TaxExemptionReason) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R360"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:TaxCategory/cbc:TierRange) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R361"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:TaxCategory/cbc:TierRatePercent) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R362"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:TaxCategory/cac:TaxScheme/cbc:Name) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R363"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R364"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:TaxCategory/cac:TaxScheme/cbc:CurrencyCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R365"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:TaxCategory/cac:TaxScheme/cac:JurisdictionAddress) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R366"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:TaxCategory/cac:AdditionalProperty/cac:UsabilityPeriod) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R367"/>
  <param value="not(cac:InvoiceLine/cac:Item/cac:TaxCategory/cac:AdditionalProperty/cac:ItemPropertyGroup) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R368"/>
  <param value="not(cac:InvoiceLine/cac:Price/cbc:PriceChangeReason) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R369"/>
  <param value="not(cac:InvoiceLine/cac:Price/cbc:PriceTypeCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R370"/>
  <param value="not(cac:InvoiceLine/cac:Price/cbc:PriceType) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R371"/>
  <param value="not(cac:InvoiceLine/cac:Price/cbc:OrderableUnitFactorRate) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R372"/>
  <param value="not(cac:InvoiceLine/cac:Price/cac:ValidityPeriod) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R373"/>
  <param value="not(cac:InvoiceLine/cac:Price/cac:PriceList) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R374"/>
  <param value="not(cac:InvoiceLine/cac:Price/cac:AllowanceCharge/cbc:ID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R375"/>
  <param value="not(cac:InvoiceLine/cac:Price/cac:AllowanceCharge/cbc:AllowanceChargeReasonCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R376"/>
  <param value="not(cac:InvoiceLine/cac:Price/cac:AllowanceCharge/cbc:PrepaidIndicator) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R377"/>
  <param value="not(cac:InvoiceLine/cac:Price/cac:AllowanceCharge/cbc:SequenceNumeric) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R378"/>
  <param value="not(cac:InvoiceLine/cac:Price/cac:AllowanceCharge/cbc:AccountingCostCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R379"/>
  <param value="not(cac:InvoiceLine/cac:Price/cac:AllowanceCharge/cbc:AccountingCost) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R380"/>
  <param value="not(cac:InvoiceLine/cac:Price/cac:AllowanceCharge/cac:TaxCategory/cbc:Name) or not(cac:InvoiceLine/cac:Price/cac:AllowanceCharge/cac:TaxCategory/cbc:Percent) or not(cac:InvoiceLine/cac:Price/cac:AllowanceCharge/cac:TaxCategory/cbc:BaseUnitMeasure) or not(cac:InvoiceLine/cac:Price/cac:AllowanceCharge/cac:TaxCategory/cbc:PerUnitAmount) or not(cac:InvoiceLine/cac:Price/cac:AllowanceCharge/cac:TaxCategory/cbc:TaxExemptionReasonCode) or not(cac:InvoiceLine/cac:Price/cac:AllowanceCharge/cac:TaxCategory/cbc:TaxExemptionReason) or not(cac:InvoiceLine/cac:Price/cac:AllowanceCharge/cac:TaxCategory/cbc:TierRange) or not(cac:InvoiceLine/cac:Price/cac:AllowanceCharge/cac:TaxCategory/cbc:TierRatePercent) or not(cac:InvoiceLine/cac:Price/cac:AllowanceCharge/cac:TaxCategory/cac:TaxScheme/cbc:Name) or not(cac:InvoiceLine/cac:Price/cac:AllowanceCharge/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode) or not(cac:InvoiceLine/cac:Price/cac:AllowanceCharge/cac:TaxCategory/cac:TaxScheme/cbc:CurrencyCode) or not(cac:InvoiceLine/cac:Price/cac:AllowanceCharge/cac:TaxCategory/cac:TaxScheme/cac:JurisdictionRegionAddress)  and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R381"/>
  <param value="not(cac:InvoiceLine/cac:Price/cac:AllowanceCharge/cac:TaxTotal) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R382"/>
  <param value="not(cac:InvoiceLine/cac:Price/cac:AllowanceCharge/cac:PaymentMeans) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R383"/>
  <param value="not(cac:InvoiceLine/cac:OrderLineReference/cbc:UUID) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R384"/>
  <param value="not(cac:InvoiceLine/cac:OrderLineReference/cbc:LineStatusCode) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R385"/>
  <param value="not(cac:InvoiceLine/cac:OrderLineReference/cac:OrderReference) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R386"/>
  <param value="not(cac:BillingReference/cac:SelfBilledCreditNoteDocumentReference) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R387"/>
  <param value="not(cac:BillingReference/cac:DebitNoteDocumentReference) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R388"/>
  <param value="not(cac:BillingReference/cac:ReminderDocumentReference) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R389"/>
  <param value="not(cac:BillingReference/cac:AdditionalDocumentReference) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R390"/>
  <param value="not(cac:BillingReference/cac:BillingReferenceLine) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R391"/>
  <param value="not(cac:BillingReference/cac:InvoiceDocumentReference/cbc:CopyIndicator) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R392"/>
  <param value="not(cac:BillingReference/cac:InvoiceDocumentReference/cbc:XPath) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R393"/>
  <param value="not(cac:BillingReference/cac:InvoiceDocumentReference/cac:Attachment/cbc:EmbeddedDocumentBinaryObject) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R394"/>
  <param value="not(cac:BillingReference/cac:CreditNoteDocumentReference/cbc:CopyIndicator) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R395"/>
  <param value="not(cac:BillingReference/cac:CreditNoteDocumentReference/cbc:XPath) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R396"/>
  <param value="not(cac:BillingReference/cac:CreditNoteDocumentReference/cac:Attachment/cbc:EmbeddedDocumentBinaryObject) and contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R397"/>
  <param value="count(cac:PartyIdentification)&lt;=1 and contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R398"/>
  <param value="count(cac:PartyName)=1 and contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R399"/>
  <param value="count(cac:PartyTaxScheme)&lt;=1 and contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R400"/>
  <param value="count(cac:PartyIdentification)&lt;=1 and contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R401"/>
  <param value="count(cac:PartyName)=1 and contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R402"/>
  <param value="count(cac:PostalAddress)=1 and contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R403"/>
  <param value="count(cac:PartyTaxScheme)&lt;=1 and contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R404"/>
  <param value="count(cac:TaxTotal)&lt;=1 and contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R405"/>
  <param value="count(cac:Price)=1 and contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R406"/>
  <param value="count(cbc:Description)&lt;=1 and contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R407"/>
  <param value="count(cbc:Name)=1 and contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R408"/>
  <param value="count(cac:ClassifiedTaxCategory)&lt;=1 and contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R409"/>
  <param value="count(cac:AllowanceCharge)&lt;=1 and contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R410"/>
  <param value="count(cbc:TaxExclusiveAmount)=1 and contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R411"/>
  <param value="count(cbc:TaxInclusiveAmount)=1 and contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R412"/>
  <param value="count(cac:PartyIdentification)&lt;=1 and contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R413"/>
  <param value="count(cac:PartyName)&lt;=1 and contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R414"/>
  <param value="count(cbc:ID)=1 and contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0') or not(contains(preceding::cbc:CustomizationID, 'urn:www.cenbii.eu:transaction:biicoretrdm015:ver1.0'))" name="BIICORE-T15-R415"/>
  <param value="/ubl:Invoice" name="Invoice"/>
  <param value="/ubl:Invoice/cac:AccountingCustomerParty/cac:Party" name="Customer"/>
  <param value="/ubl:Invoice/cac:AccountingSupplierParty/cac:Party" name="Supplier"/>
  <param value="/ubl:Invoice/cac:InvoiceLine" name="InvoiceLine"/>
  <param value="/ubl:Invoice/cac:InvoiceLine/cac:Item" name="Item"/>
  <param value="/ubl:Invoice/cac:InvoiceLine/cac:Price" name="Price"/>
  <param value="/ubl:Invoice/cac:LegalMonetaryTotal" name="Monetary_Total"/>
  <param value="/ubl:Invoice/cac:PayeeParty" name="Payee"/>
  <param value="/ubl:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount" name="Financial_Account"/>
</pattern><?DSDL_INCLUDE_END UBL/BIICORE-UBL-T15.sch?>
  <?DSDL_INCLUDE_START UBL/BIIPROFILES-UBL-T15.sch?><pattern id="BIIPROFILESUBL-T15" is-a="BIIPROFILEST15">
  <param value=". = 'urn:www.cenbii.eu:profile:bii05:ver1.0' or . = 'urn:www.cenbii.eu:profile:bii06:ver1.0' or . = 'urn:www.cenbii.eu:profile:bii07:ver1.0' or . = 'urn:www.cenbii.eu:profile:bii08:ver1.0' or . = 'urn:www.cenbii.eu:profile:bii13:ver1.0' or . = 'urn:www.cenbii.eu:profile:bii19:ver1.0'" name="BIIPROFILE-T15-R001"/>
  <param value="//cbc:ProfileID" name="Invoice_Profile"/>
</pattern><?DSDL_INCLUDE_END UBL/BIIPROFILES-UBL-T15.sch?>
  <?DSDL_INCLUDE_START UBL/BIIRULES-UBL-T15.sch?><pattern id="BIIRULESUBL-T15" is-a="BIIRULEST15">
  <param value="(cbc:StartDate and cbc:EndDate) and (number(translate(cbc:StartDate,'-','')) &lt;= number(translate(cbc:EndDate,'-','')))" name="BIIRULE-T15-R001"/>
  <param value="(cac:Party/cac:PostalAddress/cbc:CityName and cac:Party/cac:PostalAddress/cbc:PostalZone) or (cac:Party/cac:PostalAddress/cbc:ID)" name="BIIRULE-T15-R002"/>
  <param value="((cac:Party/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID='VAT']/cbc:CompanyID) and (cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) and (following::cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) and ((cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) = (following::cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) or ((cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) != (following::cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) and cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:ID='VAT' and starts-with(cac:Party/cac:PartyTaxScheme/cbc:CompanyID,cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode)))) or not((cac:Party/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID='VAT']/cbc:CompanyID)) or not((cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode)) or not((following::cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode))" name="BIIRULE-T15-R003"/>
  <param value="(cac:Party/cac:PostalAddress/cbc:CityName and cac:Party/cac:PostalAddress/cbc:PostalZone) or (cac:Party/cac:PostalAddress/cbc:ID)" name="BIIRULE-T15-R004"/>
  <param value="((cac:Party/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID='VAT']/cbc:CompanyID) and (cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) and (preceding::cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) and  ((cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) = (preceding::cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) or ((cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) != (preceding::cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) and cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:ID='VAT' and starts-with(cac:Party/cac:PartyTaxScheme/cbc:CompanyID,cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode)))) or not((cac:Party/cac:PartyTaxScheme[cac:TaxScheme/cbc:ID='VAT']/cbc:CompanyID)) or not((cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode)) or not((preceding::cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode))" name="BIIRULE-T15-R005"/>
  <param value="(cbc:PaymentDueDate and /ubl:Invoice/cbc:IssueDate) and (number(translate(cbc:PaymentDueDate,'-','')) &gt;= number(translate(/ubl:Invoice/cbc:IssueDate,'-',''))) or (not(cbc:PaymentDueDate))" name="BIIRULE-T15-R006"/>
  <param value="(cbc:PaymentMeansCode = '31') and //cac:PayeeFinancialAccount/cbc:ID or (cbc:PaymentMeansCode != '31')" name="BIIRULE-T15-R007"/>
  <param value="(cac:PayeeFinancialAccount/cbc:ID/@schemeID and (cac:PayeeFinancialAccount/cbc:ID/@schemeID = 'IBAN') and cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cac:FinancialInstitution/cbc:ID) or (cac:PayeeFinancialAccount/cbc:ID/@schemeID != 'IBAN') or (not(cac:PayeeFinancialAccount/cbc:ID/@schemeID))" name="BIIRULE-T15-R008"/>
  <param value="count(cac:TaxSubtotal/*/*/cbc:ID) = count(cac:TaxSubtotal/*/*/cbc:ID[. = 'VAT']) or count(cac:TaxSubtotal/*/*/cbc:ID[. = 'VAT']) = 0" name="BIIRULE-T15-R009"/>
  <param value="number(cbc:TaxAmount) = number(round(sum(cac:TaxSubtotal/cbc:TaxAmount)  * 10 * 10) div 100)" name="BIIRULE-T15-R010"/>
  <param value="number(cbc:LineExtensionAmount) = number(round(sum(//cac:InvoiceLine/cbc:LineExtensionAmount) * 10 * 10) div 100)" name="BIIRULE-T15-R011"/>
  <param value="((cbc:ChargeTotalAmount) and (cbc:AllowanceTotalAmount) and (number(cbc:TaxExclusiveAmount) = round((number(cbc:LineExtensionAmount) + number(cbc:ChargeTotalAmount) - number(cbc:AllowanceTotalAmount)) * 10 * 10) div 100 ))  or (not(cbc:ChargeTotalAmount) and (cbc:AllowanceTotalAmount) and (number(cbc:TaxExclusiveAmount) = round((number(cbc:LineExtensionAmount) - number(cbc:AllowanceTotalAmount)) * 10 * 10 ) div 100)) or ((cbc:ChargeTotalAmount) and not(cbc:AllowanceTotalAmount) and (number(cbc:TaxExclusiveAmount) = round((number(cbc:LineExtensionAmount) + number(cbc:ChargeTotalAmount)) * 10 * 10 ) div 100)) or (not(cbc:ChargeTotalAmount) and not(cbc:AllowanceTotalAmount) and (number(cbc:TaxExclusiveAmount) = number(cbc:LineExtensionAmount)))" name="BIIRULE-T15-R012"/>
  <param value="((cbc:PayableRoundingAmount) and (number(cbc:TaxInclusiveAmount) = (round((number(cbc:TaxExclusiveAmount) + number(sum(/ubl:Invoice/cac:TaxTotal/cbc:TaxAmount)) + number(cbc:PayableRoundingAmount)) *10 * 10) div 100))) or (number(cbc:TaxInclusiveAmount) = round(( number(cbc:TaxExclusiveAmount) + number(sum(/ubl:Invoice/cac:TaxTotal/cbc:TaxAmount))) * 10 * 10) div 100)" name="BIIRULE-T15-R013"/>
  <param value="number(cbc:TaxInclusiveAmount) &gt;= 0" name="BIIRULE-T15-R014"/>
  <param value="(cbc:AllowanceTotalAmount) and number(cbc:AllowanceTotalAmount) = (round(sum(/ubl:Invoice/cac:AllowanceCharge[cbc:ChargeIndicator=&#34;false&#34;]/cbc:Amount) * 10 * 10) div 100) or not(cbc:AllowanceTotalAmount)" name="BIIRULE-T15-R015"/>
  <param value="(cbc:ChargeTotalAmount) and number(cbc:ChargeTotalAmount) = (round(sum(/ubl:Invoice/cac:AllowanceCharge[cbc:ChargeIndicator=&#34;true&#34;]/cbc:Amount)  * 10 * 10) div 100) or not(cbc:ChargeTotalAmount)" name="BIIRULE-T15-R016"/>
  <param value="(cbc:PrepaidAmount) and (number(cbc:PayableAmount) = (round((cbc:TaxInclusiveAmount - cbc:PrepaidAmount) * 10 * 10) div 100)) or number(cbc:PayableAmount) = number(cbc:TaxInclusiveAmount)" name="BIIRULE-T15-R017"/>
  <param value="not(cbc:InvoicedQuantity) or not(cac:Price/cbc:PriceAmount) or (not(cac:Price/cbc:BaseQuantity) and number(cbc:LineExtensionAmount) = round(((round(number(cac:Price/cbc:PriceAmount) *number(cbc:InvoicedQuantity) * 10 * 10) div 100) + ( round(sum(cac:AllowanceCharge[child::cbc:ChargeIndicator='true']/cbc:Amount) *10 * 10) div 100 ) - ( round(sum(cac:AllowanceCharge[child::cbc:ChargeIndicator='false']/cbc:Amount) *10 * 10) div 100 ) ) * 10 * 10) div 100) or ((cac:Price/cbc:BaseQuantity) and number(cbc:LineExtensionAmount) = round(((round((number(cac:Price/cbc:PriceAmount) div number(cac:Price/cbc:BaseQuantity) * number(cbc:InvoicedQuantity)) * 10 * 10) div 100)+ (round(sum(cac:AllowanceCharge[child::cbc:ChargeIndicator='true']/cbc:Amount) * 10 * 10) div 100 ) -(round(sum(cac:AllowanceCharge[child::cbc:ChargeIndicator='false']/cbc:Amount) *10 * 10) div 100)) *10 *10) div 100) and not(cbc:InvoicedQuantity) or not(cac:Price/cbc:PriceAmount) or (not(cac:Price/cbc:BaseQuantity) and number(cbc:LineExtensionAmount) = round(((round(number(cac:Price/cbc:PriceAmount) *number(cbc:InvoicedQuantity) * 10 * 10) div 100) + ( round(sum(cac:AllowanceCharge[child::cbc:ChargeIndicator='true']/cbc:Amount) *10 * 10) div 100 ) - ( round(sum(cac:AllowanceCharge[child::cbc:ChargeIndicator='false']/cbc:Amount) *10 * 10) div 100 ) ) * 10 * 10) div 100) or ((cac:Price/cbc:BaseQuantity) and number(cbc:LineExtensionAmount) = round(((round((number(cac:Price/cbc:PriceAmount) div number(cac:Price/cbc:BaseQuantity) * number(cbc:InvoicedQuantity)) * 10 * 10) div 100)+ (round(sum(cac:AllowanceCharge[child::cbc:ChargeIndicator='true']/cbc:Amount) * 10 * 10) div 100 ) -(round(sum(cac:AllowanceCharge[child::cbc:ChargeIndicator='false']/cbc:Amount) *10 * 10) div 100)) *10 *10) div 100) or not(not(cbc:InvoicedQuantity) or not(cac:Price/cbc:PriceAmount) or (not(cac:Price/cbc:BaseQuantity) and number(cbc:LineExtensionAmount) = round(((round(number(cac:Price/cbc:PriceAmount) *number(cbc:InvoicedQuantity) * 10 * 10) div 100) + ( round(sum(cac:AllowanceCharge[child::cbc:ChargeIndicator='true']/cbc:Amount) *10 * 10) div 100 ) - ( round(sum(cac:AllowanceCharge[child::cbc:ChargeIndicator='false']/cbc:Amount) *10 * 10) div 100 ) ) * 10 * 10) div 100) or ((cac:Price/cbc:BaseQuantity) and number(cbc:LineExtensionAmount) = round(((round((number(cac:Price/cbc:PriceAmount) div number(cac:Price/cbc:BaseQuantity) * number(cbc:InvoicedQuantity)) * 10 * 10) div 100)+ (round(sum(cac:AllowanceCharge[child::cbc:ChargeIndicator='true']/cbc:Amount) * 10 * 10) div 100 ) -(round(sum(cac:AllowanceCharge[child::cbc:ChargeIndicator='false']/cbc:Amount) *10 * 10) div 100)) *10 *10) div 100))" name="BIIRULE-T15-R018"/>
  <param value="string-length(string(cbc:Name)) &lt;= 50" name="BIIRULE-T15-R019"/>
  <param value="not((cac:StandardItemIdentification)) or (cac:StandardItemIdentification/cbc:ID/@schemeID)" name="BIIRULE-T15-R020"/>
  <param value="not((cac:CommodityClassification)) or (cac:CommodityClassification/cbc:ItemClassificationCode/@listID)" name="BIIRULE-T15-R021"/>
  <param value="number(.) &gt;=0" name="BIIRULE-T15-R022"/>
  <param value="(cac:BillingReference/cac:InvoiceDocumentReference/cbc:ID) or (cac:BillingReference/cac:CreditNoteDocumentReferene/cbc:ID)" name="BIIRULE-T15-R023"/>
  <param value="(cbc:IssueDate)" name="BIIRULE-T15-R024"/>
  <param value="(cbc:ID)" name="BIIRULE-T15-R025"/>
  <param value="(cac:Item/cbc:Name)" name="BIIRULE-T15-R026"/>
  <param value="(cac:AccountingSupplierParty/cac:Party/cac:PartyName/cbc:Name)" name="BIIRULE-T15-R027"/>
  <param value="(cac:AccountingCustomerParty/cac:Party/cac:PartyName/cbc:Name)" name="BIIRULE-T15-R028"/>
  <param value="((cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']/cbc:TaxAmount) and (sum(cac:TaxTotal//cac:TaxSubtotal/cbc:TaxableAmount) = number(cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount))) or not((cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']))" name="BIIRULE-T15-R029"/>
  <param value="(cbc:UBLVersionID)" name="BIIRULE-T15-R030"/>
  <param value="(cbc:CustomizationID)" name="BIIRULE-T15-R031"/>
  <param value="(cbc:ProfileID)" name="BIIRULE-T15-R032"/>
  <param value="cbc:ID" name="BIIRULE-T15-R033"/>
  <param value="(cac:InvoiceLine)" name="BIIRULE-T15-R034"/>
  <param value="(cbc:DocumentCurrencyCode)" name="BIIRULE-T15-R035"/>
  <param value="(cac:OrderReference/cbc:ID) or not(cac:OrderReference)" name="BIIRULE-T15-R036"/>
  <param value="(cac:ContractDocumentReference/cbc:ID) or not(cac:ContractDocumentReference)" name="BIIRULE-T15-R037"/>
  <param value="cbc:ID" name="BIIRULE-T15-R038"/>
  <param value="(cac:LegalMonetaryTotal/cbc:PayableAmount)" name="BIIRULE-T15-R039"/>
  <param value="(cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount)" name="BIIRULE-T15-R040"/>
  <param value="(cbc:IdentificationCode)" name="BIIRULE-T15-R041"/>
  <param value="(cbc:CompanyID)" name="BIIRULE-T15-R042"/>
  <param value="(cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount)" name="BIIRULE-T15-R043"/>
  <param value="(cac:LegalMonetaryTotal/cbc:LineExtensionAmount)" name="BIIRULE-T15-R044"/>
  <param value="not(cac:PaymentMeans) or (cac:PaymentMeans/cbc:PaymentMeansCode)" name="BIIRULE-T15-R045"/>
  <param value="cbc:ID" name="BIIRULE-T15-R046"/>
  <param value="boolean(self::node()[cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']/cbc:TaxableAmount) or (cac:TaxCategory/cac:TaxScheme/cbc:ID != 'VAT')" name="BIIRULE-T15-R047"/>
  <param value="boolean(self::node()[cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']/cbc:TaxAmount) or (cac:TaxCategory/cac:TaxScheme/cbc:ID != 'VAT')" name="BIIRULE-T15-R048"/>
  <param value="cbc:ID" name="BIIRULE-T15-R049"/>
  <param value="cbc:ID" name="BIIRULE-T15-R050"/>
  <param value="cbc:LineExtensionAmount" name="BIIRULE-T15-R051"/>
  <param value="cac:Price/cbc:PriceAmount" name="BIIRULE-T15-R052"/>
  <param value="cac:TaxTotal" name="BIIRULE-T15-R053"/>
  <param value="//cac:LegalMonetaryTotal" name="Total_Amounts"/>
  <param value="/ubl:Invoice/cac:TaxTotal" name="Tax_Total"/>
  <param value="//cac:TaxScheme" name="Tax_Scheme"/>
  <param value="//cac:TaxCategory" name="Tax_Category"/>
  <param value="//cac:AccountingSupplierParty" name="Supplier"/>
  <param value="//cac:PaymentMeans" name="Payment_Means"/>
  <param value="//cac:PartyLegalEntity" name="Party_Legal_Entity"/>
  <param value="//cac:InvoiceLine/cac:Price/cbc:PriceAmount" name="Item_Price"/>
  <param value="//cac:Item" name="Item"/>
  <param value="//cac:InvoicePeriod" name="Invoice_Period"/>
  <param value="//cac:InvoiceLine" name="Invoice_Line"/>
  <param value="/ubl:Invoice" name="Invoice"/>
  <param value="//cac:AccountingCustomerParty" name="Customer"/>
  <param value="//cac:Country" name="Country"/>
  <param value="//cac:AdditionalDocumentReference" name="Annex"/>
  <param value="/ubl:Invoice/cac:TaxTotal/cac:TaxSubtotal" name="Tax_Subtotal"/>
</pattern><?DSDL_INCLUDE_END UBL/BIIRULES-UBL-T15.sch?>
  <?DSDL_INCLUDE_START UBL/EUGEN-UBL-T15.sch?><pattern id="EUGENUBL-T15" is-a="EUGENT15">
  <param value="(cac:PostalAddress/cbc:StreetName and cac:PostalAddress/cbc:CityName and cac:PostalAddress/cbc:PostalZone and cac:PostalAddress/cac:Country/cbc:IdentificationCode)" name="EUGEN-T15-R001"/>
  <param value="(cac:PostalAddress/cbc:StreetName and cac:PostalAddress/cbc:CityName and cac:PostalAddress/cbc:PostalZone and cac:PostalAddress/cac:Country/cbc:IdentificationCode)" name="EUGEN-T15-R002"/>
  <param value="(cbc:InvoicedQuantity and cbc:InvoicedQuantity/@unitCode)" name="EUGEN-T15-R003"/>
  <param value="((cbc:PaymentMeansCode = '31') and (cac:PayeeFinancialAccount/cbc:ID/@schemeID and cac:PayeeFinancialAccount/cbc:ID/@schemeID = 'IBAN') and (cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cac:FinancialInstitution/cbc:ID/@schemeID and cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cac:FinancialInstitution/cbc:ID/@schemeID = 'BIC')) or (cbc:PaymentMeansCode != '31') or ((cbc:PaymentMeansCode = '31') and  (not(cac:PayeeFinancialAccount/cbc:ID/@schemeID) or (cac:PayeeFinancialAccount/cbc:ID/@schemeID != 'IBAN')))" name="EUGEN-T15-R004"/>
  <param value="(cbc:CityName and cbc:PostalZone and cac:Country/cbc:IdentificationCode)" name="EUGEN-T15-R005"/>
  <param value="(((//cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']/cbc:TaxAmount) and (cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT')) or not((//cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT'])) and (local-name(parent:: node())=&#34;Invoice&#34;)) or not(local-name(parent:: node())=&#34;Invoice&#34;)" name="EUGEN-T15-R006"/>
  <param value="((cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']/cbc:TaxAmount) and (cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cbc:CompanyID) or not((cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT'])))" name="EUGEN-T15-R007"/>
  <param value="(parent::cac:AllowanceCharge) or (cbc:ID and cbc:Percent) or (cbc:ID = 'AE')" name="EUGEN-T15-R008"/>
  <param value="((cac:TaxCategory/cbc:ID = 'E') and (cac:TaxCategory/cbc:TaxExemptionReason or cac:TaxCategory/cbc:TaxExemptionReasonCode)) or (cac:TaxCategory/cbc:ID != 'E')" name="EUGEN-T15-R009"/>
  <param value="not(cac:PayeeParty) or (cac:PayeeParty/cac:PartyName/cbc:Name)" name="EUGEN-T15-R010"/>
  <param value="(//cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']/cbc:TaxAmount and cbc:ID) or not((//cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']))" name="EUGEN-T15-R011"/>
  <param value="number(cbc:MultiplierFactorNumeric) &gt;=0" name="EUGEN-T15-R012"/>
  <param value="(cbc:MultiplierFactorNumeric and cbc:BaseAmount) or (not(cbc:MultiplierFactorNumeric) and not(cbc:BaseAmount))" name="EUGEN-T15-R013"/>
  <param value="starts-with(//cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cbc:CompanyID,//cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode) and (//cac:TaxCategory/cbc:ID) = 'AE' or not((//cac:TaxCategory/cbc:ID) = 'AE')" name="EUGEN-T15-R015"/>
  <param value="(((//cac:TaxCategory/cbc:ID) = 'AE')  and not((//cac:TaxCategory/cbc:ID) != 'AE' )) or not((//cac:TaxCategory/cbc:ID) = 'AE') or not(//cac:TaxCategory)" name="EUGEN-T15-R016"/>
  <param value="(//cbc:TaxExclusiveAmount = //cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cbc:ID='AE']/cbc:TaxableAmount) and (//cac:TaxCategory/cbc:ID) = 'AE' or not((//cac:TaxCategory/cbc:ID) = 'AE')" name="EUGEN-T15-R017"/>
  <param value="//cac:TaxTotal/cbc:TaxAmount = 0 and (//cac:TaxCategory/cbc:ID) = 'AE' or not((//cac:TaxCategory/cbc:ID) = 'AE')" name="EUGEN-T15-R018"/>
  <param value="number(cbc:PayableAmount) &gt;= 0" name="EUGEN-T15-R019"/>
  <param value="(cbc:StartDate)" name="EUGEN-T15-R020"/>
  <param value="(cbc:EndDate)" name="EUGEN-T15-R021"/>
  <param value="number(cbc:Amount)&gt;=0" name="EUGEN-T15-R022"/>
  <param value="(cbc:AllowanceChargeReason)" name="EUGEN-T15-R023"/>
  <param value="not(//@currencyID != //cbc:DocumentCurrencyCode)" name="EUGEN-T15-R024"/>
  <param value="//cac:InvoiceLine" name="Invoice_Line"/>
  <param value="//cac:PaymentMeans" name="Payment_Means"/>
  <param value="//cac:AccountingSupplierParty/cac:Party" name="Supplier_Party"/>
  <param value="//cac:TaxCategory" name="Tax_Category"/>
  <param value="//cac:AccountingCustomerParty/cac:Party" name="Customer_Party"/>
  <param value="//cac:Delivery/cac:DeliveryLocation/cac:Address" name="Delivery_Address"/>
  <param value="//cac:InvoicePeriod" name="Invoice_Period"/>
  <param value="/ubl:Invoice" name="Invoice"/>
  <param value="//cac:TaxSubtotal" name="Tax_Subtotal"/>
  <param value="//cac:Item/cac:ClassifiedTaxCategory" name="Classified_Tax_Category"/>
  <param value="//cac:AllowanceCharge" name="Allowance_Charge"/>
  <param value="//cac:LegalMonetaryTotal" name="Total_Amounts"/>
</pattern><?DSDL_INCLUDE_END UBL/EUGEN-UBL-T15.sch?>
  <?DSDL_INCLUDE_START UBL/NONAT-UBL-T15.sch?><pattern id="NONATUBL-T15" is-a="NONATT15">
  <param value="(cac:PartyLegalEntity/cbc:CompanyID != '') and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NONAT-T15-R001"/>
  <param value="(//cac:PaymentMeans/cbc:PaymentDueDate != '') and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NONAT-T15-R002"/>
  <param value="(//cac:Delivery/cbc:ActualDeliveryDate != '') and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NONAT-T15-R003"/>
  <param value="//cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:CityName and //cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:PostalZone and //cac:Delivery/cac:DeliveryLocation/cac:Address/cac:Country/cbc:IdentificationCode and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NONAT-T15-R004"/>
  <param value="(cbc:InvoicedQuantity != '') and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NONAT-T15-R005"/>
  <param value="(cac:PostalAddress/cbc:StreetName and cac:PostalAddress/cbc:CityName and cac:PostalAddress/cbc:PostalZone and cac:PostalAddress/cac:Country/cbc:IdentificationCode) and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NONAT-T15-R006"/>
  <param value="(cac:PostalAddress/cbc:StreetName and cac:PostalAddress/cbc:CityName and cac:PostalAddress/cbc:PostalZone and cac:PostalAddress/cac:Country/cbc:IdentificationCode) and (//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO') or not((//cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'NO'))" name="NONAT-T15-R007"/>
  <param value="//cac:AccountingSupplierParty/cac:Party" name="Supplier_Party"/>
  <param value="//cac:InvoiceLine" name="Invoice_Line"/>
  <param value="/ubl:Invoice" name="Invoice"/>
  <param value="//cac:AccountingCustomerParty/cac:Party" name="Customer_Party"/>
</pattern><?DSDL_INCLUDE_END UBL/NONAT-UBL-T15.sch?>
  <?DSDL_INCLUDE_START UBL/NOGOV-UBL-T15.sch?><pattern id="NOGOVUBL-T15" is-a="NOGOVT15">
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
</pattern><?DSDL_INCLUDE_END UBL/NOGOV-UBL-T15.sch?>
  <!-- Code Lists Binding rules -->
  <!-- ======================== -->
  <?DSDL_INCLUDE_START codelist/BIIRULESCodesT15.sch?><pattern id="BIIRULESCodesT15">
<!--
  This implementation supports genericode code lists with no instance
  meta data.
-->
<!--
    Start of synthesis of rules from code list context associations.
Version 0.3
-->

<rule context="cbc:DocumentCurrencyCode" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' AED AFN ALL AMD ANG AOA ARS AUD AWG AZN BAM BBD BDT BGN BHD BIF BMD BND BOB BOV BRL BSD BTN BWP BYR BZD CAD CDF CHE CHF CHW CLF CLP CNY COP COU CRC CUP CVE CZK DJF DKK DOP DZD EEK EGP ERN ETB EUR FJD FKP GBP GEL GHS GIP GMD GNF GTQ GWP GYD HKD HNL HRK HTG HUF IDR ILS INR IQD IRR ISK JMD JOD JPY KES KGS KHR KMF KPW KRW KWD KYD KZT LAK LBP LKR LRD LSL LTL LVL LYD MAD MDL MGA MKD MMK MNT MOP MRO MUR MVR MWK MXN MXV MYR MZN NAD NGN NIO NOK NPR NZD OMR PAB PEN PGK PHP PKR PLN PYG QAR RON RSD RUB RWF SAR SBD SCR SDG SEK SGD SHP SKK SLL SOS SRD STD SVC SYP SZL THB TJS TMM TND TOP TRY TTD TWD TZS UAH UGX USD USN USS UYI UYU UZS VEF VND VUV WST XAF XAG XAU XBA XBB XBC XBD XCD XDR XFU XOF XPD XPF XTS XXX YER ZAR ZMK ZWR ZWD ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-015-002]-DocumentCurrencyCode MUST be coded using ISO code list 4217</assert>
</rule>

<rule context="@currencyID" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' AED AFN ALL AMD ANG AOA ARS AUD AWG AZN BAM BBD BDT BGN BHD BIF BMD BND BOB BOV BRL BSD BTN BWP BYR BZD CAD CDF CHE CHF CHW CLF CLP CNY COP COU CRC CUP CVE CZK DJF DKK DOP DZD EEK EGP ERN ETB EUR FJD FKP GBP GEL GHS GIP GMD GNF GTQ GWP GYD HKD HNL HRK HTG HUF IDR ILS INR IQD IRR ISK JMD JOD JPY KES KGS KHR KMF KPW KRW KWD KYD KZT LAK LBP LKR LRD LSL LTL LVL LYD MAD MDL MGA MKD MMK MNT MOP MRO MUR MVR MWK MXN MXV MYR MZN NAD NGN NIO NOK NPR NZD OMR PAB PEN PGK PHP PKR PLN PYG QAR RON RSD RUB RWF SAR SBD SCR SDG SEK SGD SHP SKK SLL SOS SRD STD SVC SYP SZL THB TJS TMM TND TOP TRY TTD TWD TZS UAH UGX USD USN USS UYI UYU UZS VEF VND VUV WST XAF XAG XAU XBA XBB XBC XBD XCD XDR XFU XOF XPD XPF XTS XXX YER ZAR ZMK ZWR ZWD ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-015-003]-currencyID MUST be coded using ISO code list 4217</assert>
</rule>

<rule context="cac:Country//cbc:IdentificationCode" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' AD AE AF AG AI AL AM AN AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BL BJ BM BN BO BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CR CU CV CX CY CZ DE DJ DK DM DO DZ EC EE EG EH ER ES ET FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU ID IE IL IM IN IO IQ IR IS IT JE JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MF MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NO NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR ST SV SY SZ TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM US UY UZ VA VC VE VG VI VN VU WF WS YE YT ZA ZM ZW ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-015-004]-Country codes in an invoice MUST be coded using ISO code list 3166-1</assert>
</rule>

<rule context="cac:TaxScheme//cbc:ID" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' AAA AAB AAC AAD AAE AAF AAG AAH AAI AAJ AAK AAL ADD BOL CAP CAR COC CST CUD CVD ENV EXC EXP FET FRE GCN GST ILL IMP IND LAC LCN LDP LOC LST MCA MCD OTH PDB PDC PRF SCN SSS STT SUP SUR SWT TAC TOT TOX TTA VAD VAT ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[CL-015-005]-Invoice tax schemes MUST be coded using UN/ECE 5153 code list</assert>
</rule>

<rule context="cac:PaymentMeans//cbc:PaymentMeansCode" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 60 61 62 63 64 65 66 67 70 74 75 76 77 78 91 92 93 94 95 96 97 ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[CL-015-006]-Payment means in an invoice MUST be coded using CEFACT code list 4461</assert>
</rule>

<rule context="cac:TaxCategory//cbc:ID" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' A AA AB AC AD AE B C E G H O S Z ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[CL-015-007]-Invoice tax categories MUST be coded using UN/ECE 5305 code list</assert>
</rule>
<!--
    End of synthesis of rules from code list context associations.
-->
</pattern><?DSDL_INCLUDE_END codelist/BIIRULESCodesT15.sch?>
  <?DSDL_INCLUDE_START codelist/EUGENCodesT15.sch?><pattern id="EUGENCodesT15">
<!--
  This implementation supports genericode code lists with no instance
  meta data.
-->
<!--
    Start of synthesis of rules from code list context associations.
Version 0.3
-->

<rule context="cac:FinancialInstitution/cbc:ID//@schemeID" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' BIC ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[PCL-015-002]-Financial Institution SHOULD be BIC code.</assert>
</rule>

<rule context="cac:PostalAddress/cbc:ID//@schemeID" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' GLN ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[PCL-015-003]-Postal address identifiers SHOULD be GLN.</assert>
</rule>

<rule context="cac:Delivery/cac:DeliveryLocation/cbc:ID//@schemeID" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' GLN ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[PCL-015-004]-Location identifiers SHOULD be GLN</assert>
</rule>

<rule context="cac:Item/cac:StandardItemIdentification/cbc:ID//@schemeID" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' GTIN ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[PCL-015-005]-Standard item identifiers SHOULD be GTIN.</assert>
</rule>

<rule context="cac:Item/cac:CommodityClassification/cbc:ItemClassificationCode//@listID" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' UNSPSC eCLASS CPV ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[PCL-015-006]-Commodity classification SHOULD be one of UNSPSC, eClass or CPV.</assert>
</rule>

<rule context="cac:PartyIdentification/cbc:ID//@schemeID" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' GLN DUNS IBAN DK:CPR DK:CVR DK:P DK:SE DK:VANS IT:VAT IT:CF IT:FTI IT:SIA IT:SECETI NO:ORGNR NO:VAT HU:VAT SE:ORGNR FI:OVT EU:VAT EU:REID FR:SIRET AT:VAT AT:GOV AT:CID IS:KT IBAN AT:KUR ES:VAT ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[PCL-015-008]-Party Identifiers MUST use the PEPPOL PartyID list</assert>
</rule>

<rule context="cbc:EndpointID//@schemeID" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' GLN DUNS IBAN DK:CPR DK:CVR DK:P DK:SE DK:VANS IT:VAT IT:CF IT:FTI IT:SIA IT:SECETI NO:ORGNR NO:VAT HU:VAT SE:ORGNR FI:OVT EU:VAT EU:REID FR:SIRET AT:VAT AT:GOV AT:CID IS:KT IBAN AT:KUR ES:VAT ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[PCL-015-009]-Endpoint Identifiers MUST use the PEPPOL PartyID list.</assert>
</rule>
<!--
    End of synthesis of rules from code list context associations.
-->
</pattern><?DSDL_INCLUDE_END codelist/EUGENCodesT15.sch?>
</schema>