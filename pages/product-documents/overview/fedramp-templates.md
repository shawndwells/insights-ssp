---
permalink: /product-documents/fedramp-templates/
layout: styleguide
category: Product Documents
title: FedRAMP Templates
lead: Product-specific security documentation.
---

The FedRAMP templates below are dynamically generated using the [OpenControl FedRAMP Templater](https://github.com/opencontrol/fedramp-templater) tool, originally created by [GSA's 18F](https://18f.gsa.gov/). An automated build system incorporates [Red Hat's OpenControl Content](https://github.com/ComplianceAsCode/redhat) directly into the FedRAMP Templates [provided by the GSA FedRAMP PMO](https://www.fedramp.gov/templates/).

Templates were last updated {{ "now" | date: "%Y-%m-%d at %H:%M" }} UTC.

<center>
	<table width="85%">
		<thead>
			<tr>
				<th><center>Product</center></th>
				<th><center>Template</center></th>
			</tr>
		</thead>
		<tr>
			<td>Ansible Tower</td>
			<td>
			  <center>
			    <a href="{{ site.baseurl }}/files/fedramp/FedRAMP-System-Security-Plan-Ansible-Tower.docx">
			      <img src="{{ site.baseurl }}/img/word_logo.svg" alt="MS Word Template for Ansible FedRAMP" style="width:35px;height:35px;"><br />
			      WORD
			    </a>
			  </center>
			</td>
		</tr>
		<tr>
			<td>OpenShift Container Platform 3.x</td>
			<td>
			  <center>
			    <a href="{{ site.baseurl }}/files/fedramp/FedRAMP-System-Security-Plan-RedHat-OpenShift-Container-Platform-3.docx">
			      <img src="{{ site.baseurl }}/img/word_logo.svg" alt="MS Word Template for OpenShift FedRAMP" style="width:35px;height:35px;"><br />
			      WORD
			    </a>
			  </center>
			</td>
		</tr>
		<tr>
			<td>OpenStack Platform 13</td>
			<td>
			  <center>
			    <a href="{{ site.baseurl }}/files/fedramp/FedRAMP-System-Security-Plan-OpenStack-Platform-13.docx">
			      <img src="{{ site.baseurl }}/img/word_logo.svg" alt="MS Word Template for OpenStack FedRAMP" style="width:35px;height:35px;"><br />
			      WORD
			    </a>
			  </center>
			</td>
		</tr>
		<tr>
			<td>Red Hat Virtualization Host (RHVH)
			<p><i>Currently the RHVH FedRAMP Template includes controls for FedRAMP Low. It has been released as Public Draft as of 30-SEPT-2018.</i></p></td>
			<td>
			  <center>
			    <a href="{{ site.baseurl }}/files/fedramp/FedRAMP-System-Security-Plan-RedHat-Virtualization-Host.docx">
			      <img src="{{ site.baseurl }}/img/word_logo.svg" alt="MS Word Template for Red Hat Virtualization Host FedRAMP" style="width:35px;height:35px;"><br />
			      WORD
			    </a>
			  </center>
			</td>
		</tr>
		<tr>
			<td>Red Hat Virtualization Manager (RHVM)
			<p><i>Currently the RHVM FedRAMP Template includes controls for FedRAMP Low. It has been released as Public Draft as of 30-SEPT-2018.</i></p></td>
			<td>
			  <center>
			    <a href="{{ site.baseurl }}/files/fedramp/FedRAMP-System-Security-Plan-RedHat-Virtualization-Manager.docx">
			      <img src="{{ site.baseurl }}/img/word_logo.svg" alt="MS Word Template for Red Hat Virtualization Manager FedRAMP" style="width:35px;height:35px;"><br />
			      WORD
			    </a>
			  </center>
			</td>
		</tr>
	</table>
</center>
<br />

### OpenShift Container Platform 3.x on Azure for Government
Using the FedRAMP-provided System Security Plan for Moderate impact systems, Red Hat and Microsoft collaborated on the release of an Azure Blueprint. The document is designed to identify which controls are inherited from Azure's FedRAMP accreditation, which are satisfied through native Red Hat OpenShift Container Platform capabilities, and which security controls are the responsibility of the system operator (procedural controls).

<center>
	<table width="85%">
		<thead>
			<tr>
				<th></th> 
				<th><center>FedRAMP Moderate</center></th>
			</tr>
		</thead>
		<tr>
			<td>OpenShift Container Platform 3.x on Azure for Government</td>
			<td>
			  <center>
			    <a href="{{ site.baseurl }}/files/fedramp/OpenShift_on_Azure_Blueprint-FedRAMP_Moderate.docx">
			      <img src="{{ site.baseurl }}/img/word_logo.svg" alt="MS Word Template for Ansible FedRAMP Low" style="width:35px;height:35px;"><br />
			      WORD
			    </a>
			  </center>
			</td>
		</tr>
	</table>
</center>

<p>Other resources for deploying OpenShift on Azure include:
	<ul>
		<li><a href="https://access.redhat.com/articles/3030691">Deploying Red Hat OpenShift Container Platform on Microsoft Azure</a>' reference architecture</li>
		<li><a href="https://github.com/openshift/openshift-ansible-contrib/tree/master/reference-architecture/azure-ansible">Deploying and Managing OpenShift on Azure</a>' Ansible Playbooks</li>
	</ul>
</p>