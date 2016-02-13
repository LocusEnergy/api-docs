# Alerts

## Overview

Alerts provide a notification a certain issues that could occur to a given component. Types of alerts include:

* System Disconnect: the device has not communicated with the server for a certain period of time
* Zero Generation: the device has not generated energy for a certain period of time when it was expected that it should be generating
* Performance Yield: measured performance is a certain threshold less than modeled performance
* Device Fault: the device has sent a message to indicate its status

## Filters

Alerts can be filtered through the query parameters. There are two sets of filters: updated since and open during.

### Updated Since

The query parameter `updatedSince` allows you to get a list of alerts that have been updated since a certain timestamp. This is particularly useful for use cases where you would like to sync alerts into another platform, such as a ticketing system. By specifying `updatedSince` to the time of the last API call, you are getting only the new status changes of the alerts.

### Open During

Open during is a concept that means the alert is open at any point within the given time period. The time period is defined between the `openDuringMin` and `openDuringMax` query parameters.

## Alert object

```json
{
    "id": 78,
    "componentId": 90,
    "alertType": "Device Fault",
    "priority": "Medium",
    "start": "2015-11-01T12:00:00-00:00",
    "end": "2015-11-22T15:00:00-00:00",
    "updated": "2015-11-24T12:05:00-00:00",
    "descriptionShort": "VDC high",
    "descriptionLong": "A voltage higher than 2100 V is present on the DC bus. (Resettable)"
}
```

### Attributes

Attribute | Type| Description | Always returned?
---|---|---|---
id | Integer | The unique identifier for the alert | yes
componentId | Integer | The unique identifier for the component that has the alert | yes
alertType | String | The type of alert. Valid types are: System Disconnect, Device Fault, Zero Generation, Performance Yield | yes
priority | String | Priority of the alert. Valid priorities are: High, Medium and Low | yes
start | String (YYYY-MM-DDThh:mm:ssZ) | Start time of the alert. This should be in the timezone specified by the tz query param of the request. | yes
end | String (YYYY-MM-DDThh:mm:ssZ) | End time of the alert. This should be in the timezone specified by the tz query param of the request. | no
updated | String (YYYY-MM-DDThh:mm:ssZ) | Time when the alert was last updated. This should be in the timezone specified by the tz query param of the request. | yes
descriptionShort | String | A short description of the alert. This only appears for device faults. | no
descriptionLong | String | A longer, more verbose description of the alert. This only appears for device faults, and does not always appear for all device faults. | no
