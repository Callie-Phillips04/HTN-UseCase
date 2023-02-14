Instance: US-Core-BP-Example-2
InstanceOf: Observation
Usage: #example
* meta.extension[0].url = "http://hl7.org/fhir/StructureDefinition/instance-name"
* meta.extension[=].valueString = "BP Data Absent Example"
* meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/instance-description"
* meta.extension[=].valueMarkdown = "This is a bp data absent example for the *Vitalsigns Profile* showing how to reprsesent blood pressure with a missing diastolic measurement."
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-blood-pressure"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* code.text = "Blood pressure systolic and diastolic"
* subject = Reference(Patient/example) "Amy Shaw"
* encounter = Reference(Encounter/1036)
* effectiveDateTime = "1999-07-02"
* component[0].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[=].code.text = "Systolic blood pressure"
* component[=].valueQuantity = 109 'mm[Hg]' "mmHg"
* component[+].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[=].code.text = "Diastolic blood pressure"
* component[=].dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown "Unknown"
* component[=].dataAbsentReason.text = "Unknown"