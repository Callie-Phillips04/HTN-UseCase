### Related Implementation Guides

There are several Implementation Guides that share similar objectives or leverage overlapping profiles and value sets:

#### Device-related and Mobile Health Implementation Guides

- [Open mHealth](https://healthedata1.github.io/mFHIR/#introduction)
    -  Combines personal health data from third-party APIs like Google Fit, FitBit, and Apple iHealth
    -  Profiles for lab data, physical activity, vital signs, and sleep monitoring 
    -  Use Cases:
        - Personal health management
        - Population health monitoring or research purposes 
    - No clear affiliation with HL7
- [Application Data Exchange Assessment Framework and Functional Requirements for Mobile Health](http://hl7.org/fhir/uv/mhealth-framework/history.html)
    - Documents the requirements and a framework for data exchange between mobile health devices, apps, and other health IT infrastructure, like EHRs
    - Contains two profiles: mHealth ADE Device profile, and mHealth ADE Observation profile
    - Use Cases:
        - Capturing routine weight measurement
        - Glucose monitoring with manual Insulin dose reporting
        - Communicating vital signs, including blood pressure
        - Recording physical activity
    - Produced using HL7 standards
    - Universal Realm
- [HL7 Consumer Mobile Health Application Functional Framework (cMHAFF)](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=476)
    - Framework for assessing the security, privacy, data accessibility, data export, and transparency or disclosure of conditions in a mobile health app
    - Produced by HL7
    - Universal Realm
- [Personal Health Device Implementation Guide](http://build.fhir.org/ig/HL7/phd/)
    - Framework for transmitting information from personal health devices (PHDs) to EHRs, CDS systems
    - Partner IG to the Point of Care Devices (PoCD) Implementation Guide
    - Produced using HL7 standards and affiliated with the Health Care Devices Work Group
    - Universal Realm
- [Point-of-Care Device Implementation Guide](http://build.fhir.org/ig/HL7/uv-pocd/)
    - Framework for transmitting information from acute point-of-care medical devices to EHRs, CDS systems, and medical data archiving for quality measurement
    - Partner IG to the Personal Health Device Implementation Guide
    - Produced using HL7 standards and affiliated with the Devices Work Group
    - Universal Realm

#### Thematic-related Implementation Guides

- [US Core](http://build.fhir.org/ig/HL7/US-Core/)
    - Minimume set of constraints on FHIR resources to create US Core Profiles
    - Produced using HL7 standards and affiliated with the HL7 International Cross-Group Projects
    - US Realm
- [OHSU Hypertension Implementation Guide](http://build.fhir.org/ig/OHSUCMP/htnu18ig/)
    - Describes the patient-facing clinincal decision support tool created for the Collaboration Oriented Application to Control High Blood Pressure
    - Uses CPG-on-FHIR framework and is intended to be used in conjunction with outpatient health care practice, with an emphasis on primary care
    - Produced using HL7 standards
    - Contains Knowledge Artifacts that define work flows, rules, strategies, and protocols 
    - US Realm, not universal
- [CIMI Vital Signs with Qualifying Elements ](http://build.fhir.org/ig/HL7/cimi-vital-signs/)
    - Capturing vital signs with the intent for improving access and re-use of vital sign observations, with particular attention to wearable devices
    - Most profiles are derived from vital signs profiles from the FHIR Specification, which are used by US Core
    - Produced using HL7 standards and affiliated with the Clinical Information Modeling Initiative
    - US Realm, not universal
- [MCC eCare Plan Implementation Guide](http://build.fhir.org/ig/HL7/fhir-us-mcc/)
    - Representation of care plans for patients with multiple chronic conditions
    - Focuses on Chronic Kidney Disease, Type 2 Diabetes Mellitus, Common Cardiovascular Disease (Hypertension, Ischemic Heart Disease, and Heart Failure), Chronic Pain, and Long COVID 
    - Produced using HL7 standards and affiliated with the Patient Care Work Group
    - US Realm, not universal

### Stages of Current, Related Implementation Guides

<table class="table">
<thead>
    <tr>
        <th>IG Name</th>
        <th>Working Group</th>
        <th>Realm</th>
        <th>Stage</th>
        <th>State</th>
        <th>Notes</th>
    </tr>
</thead>
<tbody>
{% for resource in site.data.Working-Groups %}

    <tr>

        {% capture url %}{{ resource.IG-Link }}{% endcapture %}
        <td ><a href="{{ url }}">{{ resource.IG-Name }}</a></td>
    
        <td>{{ resource.Working-Group }}</td>

        <td>{{ resource.Realm }}</td>

        <td>{{ resource.Stage }}</td>

        <td>{{ resource.State }}</td>
        
        <td>{{ resource.Notes }}</td>

    </tr>

{% endfor %}
</tbody>
</table>

<hr style="margin-top: 3em; margin-bottom: 3em;">



### Profile groups

**US Core Profiles**

<table class="table">
<thead>
    <tr>
        <th>Profile</th>
        <th>Type</th>
        <th>Computable Name</th>
        <th>Definition</th>
    </tr>
</thead>
<tbody>
{% for resource in site.data.US-Core %}

    <tr>

        {% capture url %}{{ resource.URL }}{% endcapture %}
        <td ><a href="{{ url }}">{{ resource.Profile }}</a></td>
    
        <td>{{ resource.Type }}</td>

        <td>{{ resource.ComputableName }}</td>

        <td>{{ resource.Definition }}</td>

    </tr>

{% endfor %}
</tbody>
</table>

<hr style="margin-top: 3em; margin-bottom: 3em;">


**CIMI Vital Signs Profiles**

<table class="table">
<thead>
    <tr>
        <th>Profile</th>
        <th>Type</th>
        <th>Computable Name</th>
        <th>Definition</th>
    </tr>
</thead>
<tbody>
{% for resource in site.data.Vital-Signs %}

    <tr>

        {% capture url %}{{ resource.URL }}{% endcapture %}
        <td ><a href="{{ url }}">{{ resource.Profile }}</a></td>
    
        <td>{{ resource.Type }}</td>

        <td>{{ resource.ComputableName }}</td>

        <td>{{ resource.Definition }}</td>

    </tr>

{% endfor %}
</tbody>
</table>

<hr style="margin-top: 3em; margin-bottom: 3em;">



**MCC eCare Plan**

<table class="table">
<thead>
    <tr>
        <th>Profile</th>
        <th>Type</th>
        <th>Computable Name</th>
        <th>Definition</th>
    </tr>
</thead>
<tbody>
{% for resource in site.data.MCC-eCare-Plan %}

    <tr>

        {% capture url %}{{ resource.URL }}{% endcapture %}
        <td ><a href="{{ url }}">{{ resource.Profile }}</a></td>
    
        <td>{{ resource.Type }}</td>

        <td>{{ resource.ComputableName }}</td>

        <td>{{ resource.Definition }}</td>

    </tr>

{% endfor %}
</tbody>
</table>

<hr style="margin-top: 3em; margin-bottom: 3em;">


**Personal Health Devices**

<table class="table">
<thead>
    <tr>
        <th>Profile</th>
        <th>Type</th>
        <th>Computable Name</th>
        <th>Definition</th>
    </tr>
</thead>
<tbody>
{% for resource in site.data.PHDevices %}

    <tr>

        {% capture url %}{{ resource.URL }}{% endcapture %}
        <td ><a href="{{ url }}">{{ resource.Profile }}</a></td>
    
        <td>{{ resource.Type }}</td>

        <td>{{ resource.ComputableName }}</td>

        <td>{{ resource.Definition }}</td>

    </tr>

{% endfor %}
</tbody>
</table>

<hr style="margin-top: 3em; margin-bottom: 3em;">