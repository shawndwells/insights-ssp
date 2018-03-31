---
type: component
title: USGv6 / IPv6
parent: rhel7
order: 03
---

<!-- Typsetting section begin -->
[OMB directed](https://www.whitehouse.gov/sites/whitehouse.gov/files/omb/assets/egov_docs/transition-to-ipv6.pdf) the National Institute of Standards and Technology (NIST) to develop the technical infrastructure (standards and testing) necessary to support the wide scale adoption of IPv6 in the US Government. In response, [NIST created a formal IPv6 certification program](https://www.nist.gov/programs-projects/usgv6-technical-basis-next-generation-internet). The following IPv6 certifications are comleted:

| Product | Hardware Partner | Server/Router Platform(s) | Documentation |
|:-------:|:-----------------|:-------------------------:|:-------------:|
| Red Hat Enterprise Linux 7.1+ | HPE SGI 8600 / ICE XA | Intel CPUs; Haswell (Gen8); Broadwell (Gen9); Skylake (Gen10); Cascadelake(Gen11)| [View](https://www.iol.unh.edu/registry/usgv6/430/sdoc) |
| Red Hat Enterprise Linux 7.2+ | HPE ProLiant Gen9 Family | Apollo 4200 Gen9, BL460c Gen9, BL660c Gen9, DL20 Gen9, DL60 Gen9, DL80 Gen9, DL120 Gen9, DL180 Gen9, DL360 Gen9, DL380 Gen9, DL560 Gen9, DL580 Gen9, HC250 Gen9, HC380 Gen9, ML10 Gen9, ML30 Gen9, ML110 Gen9, ML150 Gen9, ML350 Gen9, WS460c Gen9, XL170r Gen9, XL190r Gen9, XL230a Gen9, XL250a Gen9, XL260a Gen9, XL270d Gen9, XL450 Gen9 | [View](https://www.iol.unh.edu/registry/usgv6/384/sdoc) |
| Red Hat Enterprise Linux 7.3+ | Dell PowerEdge 14G Family | R740, R740XD, R640, R940, C6420, T440, T640, R440, R540, M640, M640p, FC640 | [View](https://www.iol.unh.edu/registry/usgv6/420/sdoc) |


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
