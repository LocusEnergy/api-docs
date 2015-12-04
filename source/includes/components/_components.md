# Components

## Component object

```json
{
  "id": 54369,
  "siteId": 3393714,
  "clientId": 419010,
  "parentId": 3393714,
  "parentType": "SITE",
  "nodeId": "OB.001EC1111DC9.1",
  "name": "PV Meter",
  "nodeType": "METER",
  "application": "GENERATION",
  "generationType": "SOLAR",
  "oem": "Locus Energy",
  "model": "LGate 120",
  "isConceptualNode": false,
  "serialNumber": "ABC123",
  "description": "This is a revenue grade meter"
}
```

### Attributes

Attribute | Type| Description | Always returned?
---|---|---|---
id | Integer | Unique identifier for the component | yes
siteId | Integer | Identifier for the parent site | yes
clientId | Integer | Identifier for the grandparent client | yes
parentId | Integer | Identifier for the parent. This could be the ID of a component or site depending upon the site hierarchy. | yes
parentType | String | Type of parent. This can be SITE or COMPONENT. | yes
nodeID | String | Unique MAC address of the physical device that this component represents. | yes
name | String | Component name | yes
nodeType | String | Type of component | yes
application | String | Use of component. Options are: GENERATION or NET-GRID | yes
generationType | String | Type of generation. Options are: SOLAR, WIND, THERMAL, OTHER, NET-GRID or EVSE | yes
oem | String | Original Equipment Manufacturer of the component | yes
model | String | Model name of the component | yes
isConceptualNode | boolean | Conceptual means non-monitored. If this component actually collects data, it is not conceptual. | yes
serialNumber | String | Text field for serial number | no
description | String | Text field for description | no