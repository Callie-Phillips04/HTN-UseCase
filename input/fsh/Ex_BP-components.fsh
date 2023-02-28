// Examples of individual readings 
Instance: Individual-Reading-1
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel mean systolic and mean diastolic"
* subject.display = "Bob Smith"
* effectiveDateTime = "2019-10-16T12:12:29-09:00"
* component[0].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[0].valueQuantity = 120 'mm[Hg]' "mm[Hg]"
* component[1].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[1].valueQuantity = 80 'mm[Hg]' "mm[Hg]"



Instance: Individual-Reading-2
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel mean systolic and mean diastolic"
* subject.display = "Bob Smith"
* effectiveDateTime = "2019-10-17T12:12:29-09:00"
* component[0].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[0].valueQuantity = 130 'mm[Hg]' "mm[Hg]"
* component[1].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[1].valueQuantity = 90 'mm[Hg]' "mm[Hg]"

Instance: Individual-Reading-3
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel mean systolic and mean diastolic"
* subject.display = "Bob Smith"
* effectiveDateTime = "2019-10-18T12:12:29-09:00"
* component[0].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[0].valueQuantity = 135 'mm[Hg]' "mm[Hg]"
* component[1].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[1].valueQuantity = 95 'mm[Hg]' "mm[Hg]"