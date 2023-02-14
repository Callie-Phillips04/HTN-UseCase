# Hypertension Prior Art Analysis 

## Overview
| FHIR IG  | Description | Potential Use | Maturity|
|:---:|:---:|:---:|:---:|
| [US Core – STU 5](http://hl7.org/fhir/us/core/STU5/)| Includes BP profiles | Profiles | STU 5 published 06/2022 |
| [Vital Signs with Qualifying Elements FHIR](https://build.fhir.org/ig/HL7/cimi-vital-signs/index.html) | Includes BP profiles with additional properties/ components | Profiles | STU 1 published 09/2022 |
| [OHSU Hypertension IG](https://build.fhir.org/ig/OHSUCMP/htnu18ig/)| Patient facing clinical decision support logic (based on CPG-on-FHIR framework) | Workflow Exchange Patterns and Terminology | Draft |
| [Personal Health Device IG](https://build.fhir.org/ig/HL7/phd/) | PHD/PHG -> EHR/CDS, provides mappings from device standards (ISO, continua) | Workflow Exchange/ Patterns| STU 1 published 05/2022 |
| [Physical Activity](https://build.fhir.org/ig/HL7/physical-activity/) | Standardizes measurement, reporting and interventions to improve physical activity levels | Workflow Exchange/ Patterns | Draft – Ballot TBD | 
| [MCC eCare Plan](https://build.fhir.org/ig/HL7/fhir-us-mcc/) | Defines profiles to exchange Care Plan information. | Workflow Exchange Patterns and Terminology | STU 1 ballot |
{: .grid }


# Vital Signs IG 
**Purpose**: profiles in this implementation guide is to provide a mechanism to record, search, and retrieve the vital signs associated with a patient that include the vital signs (heart rate, respiratory rate, body temperature, and blood pressure), and additional measurements such as body height/length, weight, head circumference, oxygen saturation, and BMI, and the qualifying observations needed for each measurement such as body position, laterality, cuff size and location, device type, etc.

## Profiles of Interest

|Profile Name|LOINC Code|LOINC Name and Comments|Examples|
|:---:|:---:|:---:|:---:|
|Blood Pressure Panel|85354-9|Blood pressure panel with all children optional - This is a component observation. It has no value in Observation.valueQuantity and contains at least one component, Systolic blood pressure.|Blood Pressure Panel Example  |
|Average Blood Pressure|96607-7|Blood pressure panel unspecified time mean. This observations will have components of Systolic (LOINC code 96608-5) and Diastolic (LOINC code 96609-3) average blood pressures over an unspecified period of time.|Average Blood Pressure Example  |
|24 hour blood pressure|97844-5|Blood pressure panel 24 hour mean. This observation has components of Systolic (LOINC code 8490-5) and Diastolic (LOINC code 8472-3) average blood pressures over a 24 hour period.|24 hour blood pressure Example  |

## BP Panel Elements 

|Element|Card.|Definition|Value Sets| 
|:----|:----|:----|:----|
|Systolic BP value|1..1 MS|The value of systolic BP measurement.|Pattern: LOINC code 96608-5|
|Diastolic BP value|0..1 MS|The value of diastolic BP measurement.|Pattern: LOINC code 96609-3|
|Mean Arterial Pressure|0..1 MS|Mean Arterial Pressure is a calculated observation based on the Systolic and Diastolic blood pressure measurements and is defined as the average pressure in an individual’s arteries during one cardiac cycle. |Pattern: LOINC code 8478-0|
|Effective Date/Time|1..1 MS|The date and time the BP measurement occurred.|dateTime data type|
|Body site|0..1 MS|The anatomical location where the device was placed.|Vital Signs IG BP measurement body location VS|
|Observation Category|1..*|A code that classifies the general type of observation being made.|ObservationCategoryCodes |
|Method|0..1 MS|Indicates the mechanism used to perform the observation.|Blood Pressure Measurement Method value set|
|Status|1..1|The status of the result value.|ObservationStatus|
|Reference: Device|0..1 MS|Defines the type of device used when measuring the BP.|Vital Signs IG BP measurement device VS:|
|Extension: Measurement Setting|0..1 MS|Environment in which the BP measurement was taken.|Extension(MeasurementSettingExt)|
|Extension: Body Position|0..1 MS|The position of the body when the observation was done, e.g. standing, sitting. To be used only when the body position in not precoordinated in the observation code.|Extension(bodyPosition) |
|Extension: Exercise Association|0..1 MS|The exercise state associated with the measurement.|Extension(ExerciseAssociationExt)|
|Extension: Sleep Status|0..1 MS|The state of wakefulness during the measurement.|Extension(SleepStatus)|

## Average Blood Pressure Elements 

|Element|Card.|Definition|Value Sets|
|:----|:----|:----|:----|
|Systolic BP value|1..1 MS|The value of systolic BP measurement.|Pattern: LOINC code 96608-5|
|Diastolic BP value|0..1 MS|The value of diastolic BP measurement.|Pattern: LOINC code 96609-3|
|Effective Date/Time|1..1 MS|The date and time the BP measurement occurred.|dateTime datatype|Body site|0..1 MS|The anatomical location where the device was placed.|Vital Signs IG BP measurement body locationObservation Category|1..*|A code that classifies the general type of observation being made.|ObservationCategoryCodes |
|Method|0..1 MS|Indicates the mechanism used to perform the observation.|Blood Pressure Measurement Method value set|
|Status|1..1| |ObservationStatus|The status of the result value.|
|Reference: Device|0..1 MS|Defines the type of device used when measuring the BP.|Vital Signs IG BP measurement device VS:|
|Extension: Measurement Setting|0..1 MS|Environment in which the BP measurement was taken.|Extension(MeasurementSettingExt)|
|Extension: Body Position|0..1 MS|The position of the body when the observation was done, e.g. standing, sitting. To be used only when the body position in not precoordinated in the observation code.|Extension(bodyPosition) |
|Extension: Exercise Association|0..1 MS|The exercise state associated with the measurement.|Extension(ExerciseAssociationExt)|
|Extension: Measurement Protocol|0..1 MS|Rules and algorithm for Average Blood Pressure calculation.|Measurement Setting value set (extensible)|

## OHSU Hypertension IG 
- **Purpose:** describe the AHRQ-funded, patient facing clinical decision support logic and value set encompassed in the Collaboration Oriented Application to control high blood pressure 
    - Uses CPG on FHIR framework to implement recommended standards 
- The tool assists high blood pressure treatment by... 
    - Providing Effective BP Monitoring 
        - The tool retrieves office BP measurements from EHR 
        - Allows home BP entry- provides a protocol and records the date and time of entry, provides recommendations based on the average of the most recent BP (4 office readings and 6 out of office readings) 
    - Engaging Patients in Decision Making
        -The tool provides patients with recommendations and can help them create goals 
    - Assisting Patients in communicating urgent updates 
        - The tool provides messages that patients can copy into MyChart to alert the Care team
- This IG does not define Profiles rather Plan Definitions 

### OHSU Value Sets 
|Terminology Value Sets |Definitions |
|:----|:----|
|**Ambulatory Blood Pressure Monitoring (ABPM)**|This value set contains concepts that represent ambulatory blood pressure monitoring.|
|**Hypertension**|A set of SNOMED codes for Hypertension|
|Conditions Adversely Related to Antihypertensives|A set of condition codes that may indicate an adverse reaction to an Antihypertensive Medication|
|Tobacco User|The purpose of this value set is to represent concepts for an observation of tobacco user status.|
|Average Number of Drinks per Drinking Day|The purpose of this value set is to represent concepts for assessments measuring the number of alcoholic drinks per drinking day.|
|Pregnancy|This value set contains concepts related to the diagnosis of pregnancy.|
|Blood Pressure Measured|This valueset contains codes for defining Blood Pressure Measured code attribute.|
|ValueSet/2.16.840.1.113762.1.4.1178.10| |
|BMI Follow Up Plan SNOMEDCT|Numerator criteria as defined in Preventive Care and Screening: Body Mass Index (BMI) Screening and Follow-Up Plan MSSPPREV9.|
|Counseling for Nutrition|The purpose of this value set is to represent concepts for nutrition counseling interventions.|
|ValueSet/2.16.840.1.113762.1.4.1200.242-20221201| |
|Weight Reduction Recommendations|This value set contains concepts related to weight loss counseling.|
|BMI Ratio|The purpose of this value set is to represent concepts for a physical exam where a body mass index (BMI) ratio is calculated.|
|ValueSet/2.16.840.1.113883.3.464.1003.104.12.1016| |
|Physical Activity Recommendations|This value set contains concepts related to physical activity counseling procedures.|
|End Stage Renal Disease|This value set contains concepts that represent a diagnosis of end stage renal disease.|
|Hospice care ambulatory|This value set contains concepts that represent patients receiving hospice care outside of a hospital or long term care facility.|
|Non essential Hypertension SNOMEDCT|This value set contains terms defining non-essential hypertension.|
|Alcohol Brief Intervention and Counseling|Alcohol brief intervention and counseling services that may be provided to an individual that screens “positive” for excessive alcohol intake (i.e., unhealthy alcohol intake, risky alcohol use) in an outpatient setting.|
|Diastolic Blood Pressure|This valueset contains codes for defining Diastolic Blood Pressure.|
|Tobacco Use Cessation Counseling|The purpose of this value set is to represent concepts for tobacco cessation counseling.|
|Systolic blood pressure|This valueset contains codes for defining Systolic Blood Pressure.|
|Alcohol Abuse Disorder|This value set contains concepts related to alcohol abuse conditions.|

# Personal Health Device IG 
- **Overview:** defines the use of FHIR resources to convey measurements and supporting data from communicating Personal Health Devices (PHDs) to receiving systems for electronic medical records, clinical decision support, and medical data archiving for aggregate quality measurement and research purposes.

- **Purpose:** to specify the mapping of PHD information to FHIR components. No interpretations of the data or assumptions about what data is important are specified. Implementations following this guide map all viable data provided by the PHDs
    - PHDs- consumer devices, used at home (must be Continua-certified)
    - PHGs- the gateway that handles PHD communications and translates data to the appropriate form to upload to receiving systems 

- Ensures the IEEE 11073 DIM (Domain Information Model) data is mapped to FHIR 

- Required Knowledge: IEEE 11073 20601 standard and the communication protocol used by the PHD being mapped

- The PHD data includes: characteristics, operational status and capabilities for the device, such as the serial number, manufacturer name, and firmware revision.
    - Patient information is treated separately 

- This IG does not use MS (sole purpose is to map)

# Physical Activity IG 

- **Purpose:** This implementation guide standardizes interoperability expectations for systems involved in measuring, reporting, and intervening to improve patient physical activity levels. 
    - It defines interface expectations that are relevant for patient-facing applications, patient activity measurement devices, clinical electronic health records, payers, quality measurement systems, and applications used by health and fitness professionals, personal trainers, and community-based fitness centers
- **3 Major Sections of Profiles**

    - Physical Activity Measure: A profile defining the standardized capture of the Physical Activity Measure using the FHIR Questionnaire resource

    - Physical Activity Interventions: profiles supporting the ordering of interventions intended to increase patient physical activity (plans and goals)

    - **Physical Activity Workflow (our primary interest)**- defines specific workflow and interoperability capabilities expected for systems that support this IG 
        - Defines each system that may participate in sharing information 
        - Types of data exchanges those systems are expected to support 
                - Care Planning Workflow (Contains a loop pattern)
                - Referral Management Workflow

# Multiple Chronic Conditions eCare Plan IG 

- **Purpose:** It defines how to represent coded content used to support the care planning activities focusing on the needs of patients with multiple chronic conditions. This initial version focuses on Chronic Kidney Disease Type 2 diabetes mellitus, common cardiovascular disease (hypertension, ischemic heart disease and heart failure), chronic pain and Long Covid
- Care Plan- represents prioritized concerns, goals, planned and actual interventions and the resultant care outcomes from the entire care team (patient, caregivers, and providers) 
- Supports 3 Use Cases
    - Query for patient data across care settings 
    - **Capture and communication of health concerns, goals, interventions, and outcomes (CardX main interest)** 
    - Gather and aggregate patient data for use beyond point of care
