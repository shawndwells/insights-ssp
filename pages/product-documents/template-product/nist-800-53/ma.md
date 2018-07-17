---
permalink: /product-documents/ansible-tower/nist-800-53/ma/
layout: styleguide
title: Ansible Tower - Maintenance
category: Product Documents
lead: |
  Some desc of Maintenance will go here
subnav:
  data: components.ansible-tower.policies.MA-Maintenance.component
  href: ['#%', control_key]
  text: control_key
---

<!--
	- name: django-designstandards
  distribution: Django
  url: https://github.com/department-of-veterans-affairs/django-designstandards
  author:
    name: Paul Tagliamonte (USDS)
    url: https://github.com/paultag
  notes: "This package provides access to the Design System in [Django](https://www.djangoproject.com/) applications."


- control_key: AC-1
  standard_key: NIST-800-53
  covered_by: []
  implementation_status: not applicable
  narrative:
    - text: ''
 #   - text: |
 #       'AC-1 is an organizational control outside the scope of
 #       Ansible 
-->

<div class="usa-alert usa-alert-warning">
  <div class="usa-alert-body">
    <h3 class="usa-alert-heading">Heads up</h3>
    <p class="usa-alert-text">All control responses are still in draft state and have not been reviewed by NIST, NSA, or DoD.</p>
  </div>
</div>

<br /><br />

<!-- BEGIN CONTROL RESPONSE TABLE -->
<center>
{% for control_response in site.data.components.ansible-tower.policies.MA-Maintenance.component %}

NIST CONTROL INFORMATION WILL GO HERE:
<!--
control:
{% for control in site.data.nist-800-53-latest.{{ control_response.control_key }} %}
{{ control.name }}
{% endfor %}
-->

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
