//Vital Sign IG Blood Pressure Panel Example 
Instance: BloodPressurePanel-example
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject.display = "Small Child1234"
* effectiveDateTime = "2019-10-16T12:12:29-09:00"
* issued = "2019-10-16T12:12:29-10:00"
* performer.display = "A. Pediatrician6"
* bodySite = http://snomed.info/sct#723961002 "Structure of left brachial artery (body structure)"
* device = Reference(Device/BPDevice1-example)
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 120 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 80 'mm[Hg]' "mm[Hg]"