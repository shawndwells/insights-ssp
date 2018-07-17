---
permalink: /product-documents/openshift-container-platform-3/nist-800-53/ac/
layout: styleguide
title: OpenShift Container Platform 3.x - Access Control
category: Product Documents
lead: |
  Some desc of Access Control will go here
subnav:
  data: components.openshift-container-platform-3.policies.AC-Access_Control.component
  href: ['#%', control_key]
  text: control_key
---

<div class="usa-alert usa-alert-warning">
  <div class="usa-alert-body">
    <h3 class="usa-alert-heading">Heads up</h3>
    <p class="usa-alert-text">All control responses are still in draft state and have not been reviewed by NIST, NSA, or DoD.</p>
  </div>
</div>

<br /><br />

<!-- BEGIN CONTROL RESPONSE TABLE -->
<center>
{% for control_response in site.data.components.openshift-container-platform-3.policies.AC-Access_Control.component %}

<p>NIST CONTROL INFORMATION WILL GO HERE</p>


<table width="85%">
  <thead>
    <tr id="{{ control_response.control_key }}">
      <th scope="row">
        <strong>
          <center>
            {{ control_response.control_key }} Control Response Information
          </center>
        </strong>
      </th>
    </tr>
  </thead>
  <tr>
    <td>Responsible Role: << NEEDS VAR >></td>
  </tr>
  <tr>
    <td>Parameter array needs to print here:  Parameter value needs to print here</td>
  </tr>
  <tr>
    <td>Parameter array needs to print here:  Parameter value needs to print here</td>
  </tr>
  <tr>
    <td>Implementation Status: {{ control_response.implementation_status }}</td>
  </tr>
  <tr>
    <td>Control Origination (check all that apply):
      <ul>
        <li>Provided By Customer (Customer System Specific)</li>
        <li>Shared (Service Provider and Customer Responsibility)</li>
      </ul>
      There should be a checklist here:
      <fieldset>
  
    <div>
        <input type="checkbox" id="Service_Provider_Corporate" name="origination"
               value="Service_Provider_Corporate" checked />
        <label for="Service_Provider_Corporate">Service Provider Corporate</label>
    </div>

    <div>
        <input type="checkbox" id="Service_Provider_System_Specific" name="origination"
               value="Service_Provider_System_Specific" />
        <label for="Service_Provider_System_Specific">Service Provider System Specific</label>
    </div>

    <div>
        <input type="checkbox" id="Service_Provider_Hybrid" name="origination"
               value="Service_Provider_Hybrid" />
        <label for="Service_Provider_Hybrid">Service Provider Hybrid (Corporate and System Specific)</label>
    </div>

    <div>
        <input type="checkbox" id="Configured_By_Customer" name="origination"
               value="Configured_By_Customer" />
        <label for="Configured_By_Customer">Configured By Customer (Customer System Specific)</label>
    </div>

    <div>
        <input type="checkbox" id="Service_Provider_Hybrid" name="origination"
               value="Service_Provider_Hybrid" />
        <label for="Service_Provider_Hybrid">Service Provider Hybrid (Corporate and System Specific)</label>
    </div>

    <div>
        <input type="checkbox" id="Service_Provider_Hybrid" name="origination"
               value="Service_Provider_Hybrid" />
        <label for="Service_Provider_Hybrid">Service Provider Hybrid (Corporate and System Specific)</label>
    </div>

    <div>
        <input type="checkbox" id="Service_Provider_Hybrid" name="origination"
               value="Service_Provider_Hybrid" />
        <label for="Service_Provider_Hybrid">Service Provider Hybrid (Corporate and System Specific)</label>
    </div>

</fieldset>
    </td>
  </tr>
</table>

<table width="85%">
  <thead>
    <tr>
      <th>{{ control_response.control_key }}: What is the solution and how is it implemented?</th>
    </tr>
  </thead>
  <tr>
    <td>
      <!--
      {% if control_response.narrative %}
      {{ control_response.narrative | markdownify | replace: '<p>', '' | replace: '</p>', '' }}
      {% else %}
      working on sub-elements!
      {% endif %}
      -->
      {{ control_response.narrative }}
    </td>
  </tr>
</table>

<div class="usa-grid">
  <hr class="homepage-rule center-diamond" />
</div>
{% endfor %}
</center>
<!-- END CONTROL RESPONSE LOOP -->

[open an issue]: https://github.com/uswds/uswds-site/issues/new
[send us an email]: mailto:uswds@gsa.gov
