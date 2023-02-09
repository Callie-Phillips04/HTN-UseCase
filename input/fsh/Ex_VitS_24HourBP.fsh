


Instance: TwentyFourHourBloodPressure-example
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/twenty-four-hour-blood-pressure"
* extension.url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension.valueCodeableConcept = http://snomed.info/sct#264362003 "Home (environment)"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#97844-5 "Blood Pressure panel 24 hour mean"
* subject.display = "OldMan 1234"
* effectivePeriod.start = "2020-10-16T12:30:00+10:00"
* effectivePeriod.end = "2020-10-17T12:30:00+10:00"
* issued = "2020-10-17T12:35:00+10:00"
* performer.display = "OldMan 1234"
* bodySite = http://snomed.info/sct#723961002 "Structure of left brachial artery (body structure)"
* device = Reference(Device/BPDevice2-example)
* component[0].code = http://loinc.org#8490-5 "Systolic blood pressure 24 hour mean"
* component[=].valueQuantity = 120 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8472-3 "Diastolic blood pressure 24 hour mean"
* component[=].valueQuantity = 80 'mm[Hg]' "mm[Hg]"