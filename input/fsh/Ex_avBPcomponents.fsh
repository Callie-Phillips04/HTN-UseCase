// Create an example where the average Blood Pressure links back to the individual readings 
// or Reference(vitalsigns/Individual-Diastolic-Readings-1)

Instance: AverageBloodPressure-Components
InstanceOf: AverageBloodPressure
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/average-blood-pressure"
* extension[0].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementProtocolExt"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/us/vitals/CodeSystem/MeasurementProtocolTemporaryCodeSystem#AOBP "Automated office blood pressure protocol"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#255214003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = http://loinc.org#96607-7 "Blood pressure panel mean systolic and mean diastolic"
* subject.display = "Bob Smith"
* effectivePeriod.start = "2019-10-16T12:12:29-09:00"
* effectivePeriod.end = "2019-10-19T12:42:29-09:00"
* issued = "2019-10-16T12:12:29-10:00"
* performer.display = "Dr. Smith"
* bodySite = http://snomed.info/sct#723961002 "Structure of left brachial artery (body structure)"
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non invasive method"
* device = Reference(Device/BPDevice2-example)
* derivedFrom[0] = Reference(vitalsigns/Individual-Reading-1) 
* derivedFrom[1] = Reference(vitalsigns/Individual-Reading-2) 
* derivedFrom[2] = Reference(vitalsigns/Individual-Reading-3) 
* component[0].code = http://loinc.org#96608-5 "Systolic blood pressure mean"
* component[=].valueQuantity = 128 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#96609-3 "Diastolic blood pressure mean"
* component[=].valueQuantity = 88 'mm[Hg]' "mm[Hg]"