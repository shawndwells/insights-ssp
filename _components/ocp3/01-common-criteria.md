---
type: component
title: Common Criteria
parent: ocp3
order: 01
---

OpenShift orchestrates underlying Linux Containers, which provide execution
environments for processes. These Linux Containers isolate the processes,
ensure resource accounting and limitation as well as Linux kernel service
limitations.

The Linux Container Framework provided in Red Hat Enterprise Linux was evaluated
as part of the RHEL7 Common Criteria evaluation.

That evaluation offers the following mechanisms that together can be used to
form a container:
<ul>
  <li>Resource accounting and limitation is implemented with Linux control groups. These
control groups track processes and their children and allow resources to be assigned
to and limited for these process groups.</li>
  <li>The existing Common Criteria certification provides a namespace separation
  for different classes of objects maintained by the TOE. Within a namespace, any
  subject is only able to access objects associated with that namespace. Any
  object outside the namespace is inaccessible by subjects. Especially, the host
  software operation and its security behavior cannot be interfered with from
  software executing within a namespace. The Linux Namespaces are intended to
  separate processes and their resources from each other.</li>
  <li>Linux kernel service limitation is implemented by denying the use of system calls to
a group of processes and their children. The seccomp filter implements the technical
aspect of system call filtering.</li>


<div class="usa-alert usa-alert-warning" >
  <div class="usa-alert-body"><h3 class="usa-alert-heading">Warning Status</h3><p class="usa-alert-text">The Common Criteria certification is not applicable for the IBM POWER architecture. </p>
  </div>
</div>
