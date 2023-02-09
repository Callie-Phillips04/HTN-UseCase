// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: HTNPatient
Parent: USCorePatient
Id: cardx-hypertension-patient
Title: "Hypertension Patient Profile"
Description: "A patient who has been diagnosed with or is receiving medical treatment for hypertension. This the most essential profile in CardX, since it is referenced by many other profiles. The only difference between the CardX Patient profile and the [US Core Patient Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-patient.html) is that Patient.deceased is a [must-support](https://www.hl7.org/fhir/profiling.html#mustsupport) element in CardX."
* name 1..* MS
* deceased[x] MS

