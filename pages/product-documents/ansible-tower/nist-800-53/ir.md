---
permalink: /product-documents/ansible-tower/nist-800-53/ir/
layout: styleguide
title: Ansible Tower - Incident Response
category: Product Documents
lead: |
  Some desc of Incident Response will go here
subnav:
  data: components.ansible-tower.policies.IR-Incident_Response.component
  href: ['#%', control_key]
  text: control_key
---

<br /><br />

<!-- BEGIN CONTROL SUMMARY TABLE -->
<h2>Requirements Tracability Matrix</h2>
<center>
  <table width="85%">
    <thead>
      <tr>
        <th>Control</th>
        <th>Name</th>
        <th>Status</th>
      </tr>
    </thead>
    {% for control_response in site.data.components.ansible-tower.policies.IR-Incident_Response.component %}
    <tr>
      <td><a href="#{{ control_response.control_key }}">{{ control_response.control_key }}</a></td>
      <td>TBD: parse {{ control_response.control_key }} description from NIST 800-53 dataset</td>
      <td>
        <center>
          {% if control_response.implementation_status == 'complete' or control_response.implementation_status == 'not applicable' %}
          <div class="usa-alert usa-alert-success" >
          {% elsif control_response.implementation_status == 'partial' %}
          <div class="usa-alert usa-alert-warning" >
          {% elsif control_response.implementation_status == 'planned' %}
          <div class="usa-alert usa-alert-info" > 
          {% else %} 
          <div class="usa-alert usa-alert-error" role="alert" > 
          {% endif %} 
            <div class="usa-alert-body">
               <p class="usa-alert-text">{{ control_response.implementation_status }}</p>
            </div>
          </div>
        </center>
      </td>
    </tr>
    {% endfor %}
  </table>
</center>
<!-- END CONTROL SUMMARY TABLE -->

<div class="usa-grid">
  <hr class="homepage-rule center-diamond" />
</div>

<!-- BEGIN CONTROL RESPONSE TABLE -->
<center>
{% for control_response in site.data.components.ansible-tower.policies.IR-Incident_Response.component %}

<p>NIST CONTROL INFORMATION WILL GO HERE:</p>

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
