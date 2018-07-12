---
type: component
title: ICS 500-27 Audit Data Standard
parent: ansible-tower
order: 06
---

## Auditable Events or Activities
test

### Authentication Events
#### Logons (Success/Failure)
Ansible Tower does not currently have the capability
to audit successful user logon events.

Failed logon attempts will be audited to ``/var/log/tower``. A sample audit record is shown below:

`````
tower.log:309:2018-06-28 21:05:52,309 WARNING  awx.api.views Login failed for user admin
`````

#### Logoffs (Success/Failure)
Ansible Tower does not currently have the capability to
audit user logoff events.

### File & Object Events
#### Create (Success/Failure)
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


#### Access (Success/Failure)
#### Delete (Success/Failure)
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

#### Modify (Success/Failure)
#### Permission Modifications (Success/Failure)
#### Ownership Modifications (Success/Failure)

### Writes/Downloads to External Devices/Media (e.g. A-Drive, CD/DVD drives, printers) (Success/Failure)

### Uploads From External Devices/Media (e.g. CD/DVD drives) (Success/Failure)

### User & Group Management Events
#### User Add (Success/Failure)
#### User Delete (Success/Failure)
#### User Modify (Success/Failure)
#### User Suspend (Success/Failure)
#### User Lock (Success/Failure)

#### Group/Role Add (Sucess/Failure)
#### Group/Role Delete (Success/Failure)
#### Group/Role Modify (Success/Failure)

### Use of Privileged/Special Rights Events
#### Security or Audit Policy Changes (Success/Failure)
#### Configuration Changes (Success/Failure)

### Admin or Root-level Access (Success/Failure)

### Privilege/Role Escalation (Success/Failure)

### Audit and Log Data Accesses (Success/Failure)

### System Reboot, Restart & Shutdown (Success/Failure)

### Print to a Device (Success/Failure)

### Print to a File (e.g., PDF format) (Success/Failure)

### Application (e.g., Netscape, IE, Lotus Notes, etc.) Initialization (Success/Failure)

### Export of Information (Success/Failure)

### Import of Information (Success/Failure)

## Auditable Event Details/Information Elements
### Date and time of event using the common network time (e.g., Network Time Protocol)
### Type of the event (e.g., login, print, etc.)
### Identifier indicating the source/system of the event activity
### Identifier indicating the identity of the subject or actor (e.g. UserId, ProcessId, etc.)
### Details identifying any objects or resources accessed or involved (aka Resource List), e.g., files (including location), document id, peripherals, storage devices, etc.
### Outocme

