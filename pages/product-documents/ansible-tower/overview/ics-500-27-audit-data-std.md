---
permalink: /product-documents/ansible-tower/overview/ics-500-27-audit-data-standard/
redirect_from:
- /ansible-tower/ics500-27/
layout: styleguide
title: ICS 500-27 Audit Data Standard
category: Product Documents
lead: "Working Draft as of 18-AUG-2018"
---
I. [(U) Auditable Events or Activities](#u-auditable-events-or-activities)
  * [Authentication events](#authentication-events)
    + [Logons (Success/Failure)](#logons-successfailure)
    + [Logoffs (Success)](#logoffs-successfailure)
  * [File & Object events](#file--object-events)
    + [Create (Success/Failure)](#create-successfailure)
    + [Access (Success/Failure)](#access-successfailure)
    + [Delete (Success/Failure)](#delete-successfailure)
    + [Modify (Success/Failure)](#modify-successfailure)
    + [Permission Modifications (Success/Failure)](#permission-modifications-successfailure)
    + [Ownership Modifications (Success/Failure)](#ownership-modifications-successfailure)
  * [Writes/downloads to external devices/media (e.g., A-Drive, CD/DVD drives, printers) (Success/Failure)](#writesdownloads-to-external-devicesmedia-eg-a-drive-cddvd-drives-printers-successfailure)
  * [Uploads from external devices/media (e.g. CD/DVD drives) (Success/Failure)](#uploads-from-external-devicesmedia-eg-cddvd-drives-successfailure)
  * [User & Group Management events](#user--group-management-events)
    + [User add (Success/Failure)](#user-add-successfailure)
    + [User delete (Success/Failure)](#user-delete-successfailure)
    + [User modify (Success/Failure)](#user-modify-successfailure)
    + [User suspend (Success/Failure)](#user-suspend-successfailure)
    + [User lock (Success/Failure)](#user-lock-successfailure)
    + [Group/Role add (Success/Failure)](#grouprole-add-successfailure)
    + [Group/Role delete (Success/Failure)](#grouprole-delete-successfailure)
    + [Group/Role modify (Success/Failure)](#grouprole-modify-successfailure)
  * [Use of Privileged/Special Rights events](#use-of-privilegedspecial-rights-events)
    + [Security or audit policy changes (Success/Failure)](#ecurity-or-audit-policy-changes-successfailure)
    + [Configuration changes (Success/Failure)](#configuration-changes-successfailure)
  * [Admin or root-level access (Success/Failure)](#admin-or-root-level-access-successfailure)
  * [Privilege/Role escalation (Success/Failure)](#privilegerole-escalation-successfailure)
  * [Audit and log data accesses (Success/Failure)](#audit-and-log-data-accesses-successfailure)
  * [System Reboot, Restart & Shutdown (Success/Failure)](#system-reboot-restart--shutdown-successfailure)
  * [Print to a device (Success/Failure)](#print-to-a-device-successfailure)
  * [Print to a file (e.g., pdf format (Success/Failure)](#print-to-a-file-eg-pdf-format-successfailure)
  * [Application (e.g., Netscape, IE, Lotus Notes, etc.) initialization (Success/Failure)](#application-eg-netscape-ie-lotus-notes-etc-initialization-successfailure)
  * [Export of information (Success/Failure)](#export-of-information-successfailure)
  * [Import of information (Success/Failure)](#import-of-information-successfailure)


II. [(U) Auditable Event Details/Information Elements](#ii-u-auditable-event-detailsinformation-elements)
  * [Date and time of event using common network time (e.g., Network Time Protocol).](#date-and-time-of-event-using-the-common-network-time-eg-network-time-protocol)
  * [Type of the event (e.g. login, print, etc.).](#type-of-the-event-eg-login-print-etc)
  * [Identifier indicating the source/system of the event activity.](#identifier-indicating-the-sourcesystem-of-the-event-activity)
  * [Identifier indicating the identity of the subject or actor (e.g., UserId, ProcessId, etc).](#identifier-indicating-the-identity-of-the-subject-or-actor-eg-userid-processid-etc)
  * [Details identifying any objects or resources accessed or involved (aka Resource List), e.g., files (including locationm), document id, peripherals, storage devices, etc.](#details-identifying-any-objects-or-resources-accessed-or-involved-aka-resource-list-eg-files-including-location-document-id-peripherals-storage-devices-etc)
  * [Outcome](#outcome)


III. [(U) Attributable Events Indicating Violation of System/Target](#iii-u-attributable-events-indicating-violation-of-systemtarget)
  * [Malicious code detection](#malicious-code-detection)
  * [Unauthorized local device access](#unauthorized-local-device-access)
  * [Unauthorized executables](#unauthorized-executables)
  * [Unauthorized privileged access](#unauthorized-privileged-access)
  * [After-hours privileged access](#after-hours-privileged-access)
  * [System reset/reboot](#system-resetreboot)
  * [Disabling of the audit mechanism](#disabling-of-the-audit-mechanism)
  * [Downloading to local devices](#downloading-to-local-devices)
  * [Printing to a local device](#printing-to-local-devices)
  * [Uploading from local devices](#uploading-from-local-devices)

<hr />

# (U) Auditable Events or Activities

## Authentication Events
### Logons (Success/Failure)
Ansible Tower does not currently have the capability
to audit successful user logon events.

Failed logon attempts will be audited to ``/var/log/tower``. A sample audit record is shown below:

`````
tower.log:309:2018-06-28 21:05:52,309 WARNING  awx.api.views Login failed for user admin
`````

### Logoffs (Success/Failure)
Ansible Tower does not currently have the capability to
audit user logoff events.

## File & Object Events
### Create (Success/Failure)
Objects created within Ansible Tower will generate audit
events in the Activity Steam. Specifically, the
``"operation": "create"`` data field will identify created
objects.

A sample audit event record demonstrating the ``admin``
user successfully creating a new Tower Inventory, ``New Inventory``
is shown below:

`````
{
            "id": 40,
            "type": "activity_stream",
            "url": "/api/v1/activity_stream/40/",
            "related": {
                "inventory": [
                    "/api/v1/inventories/2/"
                ],
                "actor": "/api/v1/users/1/"
            },
            "summary_fields": {
                "inventory": [
                    {
                        "has_active_failures": false,
                        "has_inventory_sources": false,
                        "description": "test inventory",
                        "inventory_sources_with_failures": 0,
                        "groups_with_active_failures": 0,
                        "kind": "",
                        "hosts_with_active_failures": 0,
                        "organization_id": 1,
                        "total_hosts": 0,
                        "total_inventory_sources": 0,
                        "total_groups": 0,
                        "id": 2,
                        "name": "New Inventory"
                    }
                ],
                "actor": {
                    "username": "admin",
                    "first_name": "",
                    "last_name": "",
                    "id": 1
                }
            },
            "timestamp": "2018-06-28T21:03:16.026520Z",
            "operation": "create",
            "changes": {
                "host_filter": "",
                "kind": "",
                "name": "New Inventory",
                "variables": "---",
                "organization": "Default",
                "insights_credential": null,
                "id": 2,
                "description": "test inventory"
            },
            "object1": "inventory",
            "object2": "",
            "object_association": ""
        }
`````


### Access (Success/Failure)
### Delete (Success/Failure)
Objects created within Ansible Tower will generate audit
events in the Activity Steam. Specifically, the
``"operation": "delete"`` data field will identify created
objects.

A sample audit event record demonstrating the ``admin``
user successfully deleting a Tower Inventory, ``New Inventory``
is shown below:

`````
        {
            "id": 41,
            "type": "activity_stream",
            "url": "/api/v1/activity_stream/41/",
            "related": {
                "actor": "/api/v1/users/1/"
            },
            "summary_fields": {
                "actor": {
                    "username": "admin",
                    "first_name": "",
                    "last_name": "",
                    "id": 1
                }
            },
            "timestamp": "2018-06-28T21:05:42.697915Z",
            "operation": "delete",
            "changes": {
                "variables": "---",
                "total_inventory_sources": 0,
                "adhoc_role": "Role object",
                "id": 2,
                "admin_role": "Role object",
                "has_inventory_sources": false,
                "modified_by": "admin",
                "groups_with_active_failures": 0,
                "created_by": "admin",
                "hosts_with_active_failures": 0,
                "read_role": "Role object",
                "total_groups": 0,
                "insights_credential": null,
                "use_role": "Role object",
                "inventory_sources_with_failures": 0,
                "description": "test inventory",
                "has_active_failures": false,
                "host_filter": null,
                "kind": "",
                "name": "New Inventory",
                "created": "2018-06-28 21:03:15.945732+00:00",
                "modified": "2018-06-28 21:05:42.676254+00:00",
                "total_hosts": 0,
                "update_role": "Role object",
                "organization": "Default",
                "pending_deletion": true
            },
            "object1": "inventory",
            "object2": "",
            "object_association": ""
        }
`````

### Modify (Success/Failure)
### Permission Modifications (Success/Failure)
### Ownership Modifications (Success/Failure)

## Writes/Downloads to External Devices/Media (e.g. A-Drive, CD/DVD drives, printers) (Success/Failure)

## Uploads From External Devices/Media (e.g. CD/DVD drives) (Success/Failure)

## User & Group Management Events
### User Add (Success/Failure)
### User Delete (Success/Failure)
### User Modify (Success/Failure)
### User Suspend (Success/Failure)
### User Lock (Success/Failure)

### Group/Role Add (Sucess/Failure)
### Group/Role Delete (Success/Failure)
### Group/Role Modify (Success/Failure)

## Use of Privileged/Special Rights Events
### Security or Audit Policy Changes (Success/Failure)
### Configuration Changes (Success/Failure)

## Admin or Root-level Access (Success/Failure)

## Privilege/Role Escalation (Success/Failure)

## Audit and Log Data Accesses (Success/Failure)

## System Reboot, Restart & Shutdown (Success/Failure)

## Print to a Device (Success/Failure)

## Print to a File (e.g., PDF format) (Success/Failure)

## Application (e.g., Netscape, IE, Lotus Notes, etc.) Initialization (Success/Failure)

## Export of Information (Success/Failure)

## Import of Information (Success/Failure)

## II. (U) Auditable Event Details/Information Elements
### Date and time of event using the common network time (e.g., Network Time Protocol)
### Type of the event (e.g., login, print, etc.)
### Identifier indicating the source/system of the event activity
### Identifier indicating the identity of the subject or actor (e.g. UserId, ProcessId, etc.)
### Details identifying any objects or resources accessed or involved (aka Resource List), e.g., files (including location), document id, peripherals, storage devices, etc.
### Outcome


## III. (U) Attributable Events* Indicating Violation of System/Target
"Events" of concern that require further analysis or review of additional information or events. Some of these may require tools or utilities (e.g., malicious code detection).

### Malicious code detection
Detection of malicious code (e.g. malware) is a function of the operating system. Auditing such events is outside the scope of Ansible Tower auditing.

### Unauthorized local device access
Detection of unauthorized local device access is a function of client-side computing (e.g. workstations). Auditing such events is outside the scope of Ansible Tower auditing.

### Unauthorized executables
Detection of unauthorized executables is a function of the operating system. Auditing such events is outside the scope of Ansible Tower auditing.

### Unauthorized privileged access
Audit of all access attempts, to both privileged and unprivileged accounts, authorized or non-authorized, is captured in **[Logons (Success/Failure)](#logons-successfailure)**.

### After-hours privileged access
Ansible Tower is not capable of indicating after-hours privileged access. To assist in satisfaction of this requirement, Ansible Tower annotates audit events with timestamp information. Third party solutions can compare that timestamp with standard access hours for the account indicated in the audit event.

### System reset/reboot
Audit of system reset/reboot is a function of the operating system. Auditing such events is outside the scope of Ansible Tower auditing.

### Disabling of the audit mechanism
Ansible Tower audits events to the Activity Steam. Enablement of the Activity Stream is statically compiled into Ansible Tower and disablement is not a configurable action.

The audit subsystem of the host operating system is used to record audit events to disk, such as those captured in ``/var/log/tower``. Capturing disabling of the operating system audit mechanism is a function of the operating system and is outside the scope of Ansible Tower auditing.

### Downloading to local devices
Downloading to local devices is a function of client-side computing (e.g. workstations). Auditing such events is outside the scope of Ansible Tower auditing.

### Printing to local devices
Printing to local devices is a function of client-side computing (e.g. workstations). Auditing such events is outside the scope of Ansible Tower auditing.

### Uploading from local devices
The **[File & Object events](#file--object-events)** family of audit events capture creation of data objects, regardless of how they were created (e.g. uploaded, or created through web interface). No additional audit rules are needed to satisfy this requirement.