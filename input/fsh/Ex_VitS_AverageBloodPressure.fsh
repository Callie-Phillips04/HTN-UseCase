/// Vital Signs IG Average Blood Pressure Profile Example  

Instance: AverageBloodPressure-example
InstanceOf: Observation
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
* subject.display = "OldMan 1234"
* effectivePeriod.start = "2019-10-16T12:12:29-09:00"
* effectivePeriod.end = "2019-10-16T12:42:29-09:00"
* issued = "2019-10-16T12:12:29-10:00"
* performer.display = "OldMan 1234"
* bodySite = http://snomed.info/sct#723961002 "Structure of left brachial artery (body structure)"
* device = Reference(Device/BPDevice2-example)
* component[0].code = http://loinc.org#96608-5 "Systolic blood pressure mean"
* component[=].valueQuantity = 120 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#96609-3 "Diastolic blood pressure mean"
* component[=].valueQuantity = 80 'mm[Hg]' "mm[Hg]"


Instance: AverageBloodPressure-example2-Mandatory
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/average-blood-pressure"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = http://loinc.org#96607-7 "Blood pressure panel mean systolic and mean diastolic"
* subject.display = "YoungMan 1234"
* effectivePeriod.start = "2023-01-16T12:11:29-10:00"
* effectivePeriod.end = "2023-02-16T12:42:29-09:00"
* component[0].code = http://loinc.org#96608-5 "Systolic blood pressure mean"
* component[=].valueQuantity = 160 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#96609-3 "Diastolic blood pressure mean"
* component[=].valueQuantity = 90 'mm[Hg]' "mm[Hg]"