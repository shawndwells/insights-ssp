---
title: Password reset form
parent: Form templates
order: 03
lead: A standard template for resetting a password
---

{% include code/preview.html component="password-reset" %}
{% include code/accordion.html component="password-reset" %}
<div class="usa-accordion-bordered">
  <button class="usa-button-unstyled usa-accordion-button"
      aria-expanded="true" aria-controls="password-reset-docs">
    Documentation
  </button>
  <div id="password-reset-docs" aria-hidden="false" class="usa-accordion-content">
    <h4 class="usa-heading">Accessibility</h4>
    <ul class="usa-content-list">
      <li>As you customize this form template, make sure it continues to follow the <a href="{{ site.baseurl }}/form-templates/">accessibility guidelines for form templates</a> and the <a href="{{ site.baseurl }}/form-controls/">accessibility guidelines for form controls</a>.</li>
    </ul>
    <h4 class="usa-heading">Usability</h4>
    <h5>When to use</h5>
    <ul class="usa-content-list">
      <li>To offer a way to easily reset a password any time users are able to sign in to your site.</li>
    </ul>
    <h5>Guidance</h5>
    <ul class="usa-content-list">
      <li>If users need a password to access your site, they will forget that password and need a way to reset it.</li>
      <li>For guidance on the technical details of validation, see the
        <a href="/components/form-controls/#validation">validation documentation</a>.</li>
      <li>State any password requirements (for example, “Must include one capital letter”) up front. Don’t leave users guessing about password requirements, only to hit them with an error message later.</li>
      <li>For more guidance on password requirements, see NIST's <a href="https://github.com/usnistgov/800-63-3/blob/nist-pages/sp800-63b/appA_memorized.md">Appendix A—Strength of Memorized Secrets</a>.</li>
    </ul>
  </div>
</div>
