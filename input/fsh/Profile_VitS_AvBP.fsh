Alias: $vitalsigns = http://hl7.org/fhir/StructureDefinition/vitalsigns
Alias: $observation-bodyPosition = http://hl7.org/fhir/StructureDefinition/observation-bodyPosition
Alias: $ExerciseAssociationExt = http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt
Alias: $MeasurementSettingExt = http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt
Alias: $MeasurementProtocolExt = http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementProtocolExt
Alias: $us-core-patient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias: $bp-device = http://hl7.org/fhir/us/vitals/StructureDefinition/bp-device
Alias: $bpmeasbodylocationprecoord = http://hl7.org/fhir/us/vitals/ValueSet/bpmeasbodylocationprecoord
Alias: $bpMeasMethodVS = http://hl7.org/fhir/us/vitals/ValueSet/bpMeasMethodVS

Profile: AverageBloodPressure
Parent: $vitalsigns
Id: average-blood-pressure
Title: "Average Blood Pressure"
Description: "A calculated average of two or more blood pressure readings in a specified time period or according to a specified algorithm or protocol.  The average blood pressure has a systolic and a diastolic component."
* ^url = "http://hl7.org/fhir/us/vitals/StructureDefinition/average-blood-pressure"
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[0].name = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/cimi"
* ^contact[+].name = "Logica"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.logicahealth.org/"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^copyright = "Logica Health, all rights reserved Creative Commons License"
* extension contains
    $observation-bodyPosition named BodyPosition 0..1 MS and
    $ExerciseAssociationExt named exerciseAssociation 0..1 MS and
    $MeasurementSettingExt named MeasurementSetting 0..1 MS and
    $MeasurementProtocolExt named MeasurementProtocol 0..1 MS
* extension[BodyPosition] ^short = "Body Position"
* extension[exerciseAssociation] ^short = "Exercise Association"
* extension[MeasurementSetting] ^short = "Measurement setting"
* extension[MeasurementProtocol] ^short = "Rules and algorithm for Average Blood Pressure calculation."
* code = http://loinc.org#96607-7
* code ^short = "Blood pressure panel unspecified time mean"
* subject only Reference($us-core-patient)
* value[x] ..0
* bodySite MS
* bodySite from $bpmeasbodylocationprecoord (extensible)
* bodySite ^binding.description = "A set of codes that describe where on/in the body an observation or procedure took place"
* method MS
* method from $bpMeasMethodVS (extensible)
* method ^binding.description = "A set of codes that describe the method used to measure a blood pressure"
* specimen ..0
* device only Reference($bp-device)
* device MS
* device ^short = "Blood Pressure Device"
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component ^short = "Blood pressure components"
* component contains
    SystolicBP 1..1 and
    DiastolicBP 0..1
* component[SystolicBP] ^short = "Systolic Blood Pressure"
* component[SystolicBP].code = http://loinc.org#96608-5
* component[SystolicBP].code ^short = "Systolic blood pressure unspecified time mean"
* component[SystolicBP].value[x] only Quantity
* component[SystolicBP].valueQuantity 0..1 MS
* component[SystolicBP].valueQuantity.value 1.. MS
* component[SystolicBP].valueQuantity.unit 1.. MS
* component[SystolicBP].valueQuantity.system 1.. MS
* component[SystolicBP].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[SystolicBP].valueQuantity.code 1.. MS
* component[SystolicBP].valueQuantity.code = #mm[Hg] (exactly)
* component[DiastolicBP] ^short = "Diastolic Blood Pressure"
* component[DiastolicBP].code = http://loinc.org#96609-3
* component[DiastolicBP].code ^short = "Diastolic blood pressure unspecified time mean"
* component[DiastolicBP].value[x] only Quantity
* component[DiastolicBP].valueQuantity 0..1 MS
* component[DiastolicBP].valueQuantity.value 1.. MS
* component[DiastolicBP].valueQuantity.unit 1.. MS
* component[DiastolicBP].valueQuantity.system 1.. MS
* component[DiastolicBP].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[DiastolicBP].valueQuantity.code 1.. MS
* component[DiastolicBP].valueQuantity.code = #mm[Hg] (exactly)