---
type: component
title: Lists
parent: rhel7
order: 05
---

<!-- Lists section begin -->
### NIST National Checklist Program
The [National Checklist Program (NCP)](https://www.nist.gov/programs-projects/national-checklist-program), defined by [NIST SP 800-70](http://doi.org/10.6028/NIST.SP.800-70r4), is the [U.S. government repository](https://nvd.nist.gov/ncp/repository) of publicly available security checklists (or benchmarks) that provide detailed low level guidance on setting the security configuration of operating systems and applications.

| Product | Available Configuration Profiles | NIST Checklist ID |
|:-------:|:---------------------------------|:----:|
| Red Hat Enterprise Linux 7.x | (1) Committee on National Security Systems Instruction No. 1253 (CNSSI 1253)<br /><br />(2) NIST Controlled Unclassified Information (NIST 800-171)<br /><br />(3) NIST 800-53 control selections for MODERATE impact systems (NIST 800-53)<br /><br />(4) U.S. Government Configuration Baseline (USGCB)<br /><br />(5) NIAP Protection Profile for General Purpose Operating Systems v4.0 (OSPP v4.0)<br /><br />(6) DISA Operating System Security Requirements Guide (OS SRG)<br /><br />(7) FBI Criminal Justice Information Services (CJIS)<br /><br />(8) Health Insurance Portability and Accountability Act (HIPAA) | [Checklist #811](https://nvd.nist.gov/ncp/checklist/811) |


<p class="usa-font-lead">Lists organize written information for users.</p>

{% include code/preview.html component="lists" classes="preview-lists" %}
{% include code/accordion.html component="lists" %}
<div class="usa-accordion-bordered usa-accordion-docs">
  <button class="usa-button-unstyled usa-accordion-button"
      aria-expanded="true" aria-controls="list-docs">
    Documentation
  </button>
  <div id="list-docs" class="usa-accordion-content">
    <h4 class="usa-heading">Implementation</h4>
    <p>Lists are styled by default. For unstyled lists, use either the <code>usa-unstyled-list</code> class or unstyled list mixin: <code>@include unstyled-list;</code>. Both are located in <code>src/stylesheets/core/<wbr>_utilities.scss</code>.</p>
    <h4 class="usa-heading">Usability</h4>
    <h5>When to use</h5>
    <ul class="usa-content-list">
      <li>Use an ordered list when you need to display text in some ranking, hierarchy, or series of steps.</li>
      <li>Use unordered lists to display text in no specific order.</li>
    </ul>
    <h5>When to consider something different</h5>
    <ul class="usa-content-list">
      <li>If you need to communicate long lists of narrative text.</li>
    </ul>
    <h5>Guidelines</h5>
    <ul class="usa-content-list">
      <li>Use sentence case and begin lists with a capital letter.</li>
      <li>Use punctuation appropriate to the text. Do not leave sentences without periods.</li>
    </ul>
  </div>
</div>
