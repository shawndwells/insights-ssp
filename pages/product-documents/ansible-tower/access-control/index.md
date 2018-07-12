---
permalink: /product-documents/ansible-tower/access-control/
layout: styleguide
title: Ansible Tower - Access Control
category: Product Documents
lead: |
  Users of the U.S. Web Design System have created implementations for
  popular content management systems, web frameworks, and package managers that
  may help get you started more quickly and easily. Though some implementations
  may not include all of the Design System, they should give your team a strong
  foundation to work from.
subnav:
  data: opencontrol-tower-access_control
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

<table>
  <thead>
    <tr>
      <th>Control Key</th>
      <th>Implementation Status</th>
      <th>Narrative/Response</th>
      <th>Notes</th>
    </tr>
  </thead>
{% for control_response in site.data.opencontrol-tower-access_control %}
  <tr id="{{ control_response.control_key }}">
    <th scope="row">
      <strong><center><a href="#{{ control_response.control_key }}"></a>{{ control_response.control_key }}</center></strong>
    </th>
    <td><center>{{ control_response.implementation_status }}</center></td>
    <td>
      {% if control_response.narrative %}
      {{ control_response.narrative | markdownify | replace: '<p>', '' | replace: '</p>', '' }}
      {% else %}
      working on sub-elements!
      {% endif %}
    </td>
    <td>{{ control_response.notes | markdownify | replace: '<p>', '' | replace: '</p>', '' }}</td>
  </tr>
{% endfor %}
</table>

[open an issue]: https://github.com/uswds/uswds-site/issues/new
[send us an email]: mailto:uswds@gsa.gov
