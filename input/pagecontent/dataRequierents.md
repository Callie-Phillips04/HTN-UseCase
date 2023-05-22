
# Data Requierements of Interest 

## Blood Pressure Observation Elements 

| Element | Cardinality        |  Definition | ValueSets   |
|---------|--------------------|-------------|-------------|
| Systolic BP  | 1..1 MS | The value of systolic BP measurement. | Pattern: LOINC code 96608-5  |
| Diastolic BP | 1..1 MS | The value of diastolic BP measurement. | Pattern: LOINC code 96609-3 |
| Effective Date/Time | 1..1 MS | The date and time the BP measurement occurred. | dateTime data type |
| Body Site | 0..1 MS | The anatomical location where the device was placed. | Vital Signs IG BP measurement body location VS |
| Observation Category | 1..* MS | A code that classifies the general type of observation being made. |ObservationCategoryCodes |
| Method | 0..1 MS | Indicates the mechanism used to perform the observation. | Blood Pressure Measurement Method value set |
| Status | 1..1 | The status of the result value. | ObservationStatus |
| Reference: Device | 0..1 MS | Defines the type of device used when measuring the BP. | Vital Signs IG BP measurement device VS: |
| Reference: Patient | 0..1 MS | Defines the type patient identifying information | Vital Signs IG BP measurement device VS: |
| Extension: Measurement Setting | 0..1 MS | Environment in which the BP measurement was taken. |Extension(MeasurementSettingExt) |
{: .grid }




## Average Blood Pressure Elements 

| Element | Cardinality        |  Definition | ValueSets   |
|---------|--------------------|-------------|-------------|
| Systolic BP  | 1..1 MS | The value of systolic BP measurement. | Pattern: LOINC code 96608-5  |
| Diastolic BP | 0..1 MS | The value of diastolic BP measurement. | Pattern: LOINC code 96609-3 |
| Mean Arterial Pressure | 0..1 MS | The calculated observation based on the Systolic and Diastolic blood pressure measurements and is defined as the average pressure in an individual’s arteries during one cardiac cycle. | Pattern: LOINC code 8478-0 |
| Effective Date/Time | 1..1 MS | The date and time the BP measurement occurred. | dateTime data type |
| Body Site | 0..1 MS | The anatomical location where the device was placed. | Vital Signs IG BP measurement body location VS |
| Observation Category | 1..* MS | A code that classifies the general type of observation being made. |ObservationCategoryCodes |
| Method | 0..1 MS | Indicates the mechanism used to perform the observation. | Blood Pressure Measurement Method value set |
| Status | 1..1 | The status of the result value. | ObservationStatus |
| Reference: Device | 0..1 MS | Defines the type of device used when measuring the BP. | Vital Signs IG BP measurement device VS: |
| Extension: Measurement Setting | 0..1 MS | Environment in which the BP measurement was taken. |Extension(MeasurementSettingExt) |
| Extension: Body Position | 0..1 MS | The position of the body when the observation was done, e.g. standing, sitting. To be used only when the body position in not precoordinated in the observation code. | Extension(bodyPosition) |
| Extension: Exercise Association | 0..1 MS | The exercise state associated with the measurement. |Extension(ExerciseAssociationExt) |
| Extension: Measurement Protocol | 0..1 MS | Rules and algorithm for Average Blood Pressure calculation. | Measurement Setting value set (extensible) |
{: .grid }



# Hypertension Management Scenarios
- **Purpose:** 
1.	Patient obtained a connected device with no set-up requirements.
    - Device vendor application will already have the device metadata predefined. 
    - Patient health intermediary has functionality to allow patient to enter measurement setting and body site data. 
    - Patient health intermediary has functionality to calculate BP averages. 
2.	Patient obtained connected device that requires setup (Wi-Fi connected device, Bluetooth connected device)
    - Device vendor gateway has functionality for patient to enter device metadata. 
3.	Unconnected Device
    - Patient can manually enter all BP measurements, device information, and BP metadata into the patient health intermediary. 


<div style="text-align: center;">
<img src="Scenarios-ig.drawio.png" />
</div>>
