---
type: component
title: Typesetting
parent: typography
order: 03
---

<!-- Typsetting section begin -->

<p>Readable text allows users to efficiently read and take in textual information, whereas text that is not readable turns off readers or makes it challenging for them to stay focused. The following guidelines promote good readability.</p>

{% include code/preview.html component="typesetting" %}
{% include code/accordion.html component="typesetting" %}
<div class="usa-accordion-bordered usa-accordion-docs">
  <button class="usa-button-unstyled usa-accordion-button"
      aria-expanded="true" aria-controls="typesetting-docs">
    Documentation
  </button>
  <div id="typesetting-docs" class="usa-accordion-content">
    <h4 class="usa-heading">Implementation</h4>
    <p>To add a max-width to text, add the class <code>usa-content</code> to your document. Use at the specificity that best suits your project's needs.</p>
    <p>You can change the max-width value <code>$text-max-width</code> in <code>dist/scss/core/_variables.scss</code>. The max-width defaults to 66 characters per line using character units (`66ch`).</p>
    <h4 class="usa-heading">Usability</h4>
    <ul class="usa-content-list">
      <li>Alignment: Type set flush left provides the eye a constant starting point for each line, making text easier to read.</li>
      <li>Line length: Controlling the length of lines of text in extended copy makes reading more comfortable by helping readers’ eyes flow easily from one line to the next. Somewhere between 50 and 75 characters per line is broadly considered to be a readable line length, while 66 characters is considered the ideal. Other factors beyond line length also affect reading comfort. Text with more space between lines can have somewhat longer line length. Also, contexts in which users will not be reading long passages of text (such as footnotes or alerts) can safely be set with somewhat longer lines as well.</li>
      <li>Spacing: White space affects how the user focuses their attention on the content. It makes it easier to know what to read and where to begin. Spacing between typographic elements should be open enough to feel light, but close enough to establish a proper relationship between elements. When setting headers and body copy, white space should be 60px, 30px, 20px, or 15px.</li>
    </ul>
  </div>
</div>
