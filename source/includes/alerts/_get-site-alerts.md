## Get alerts for site

> Example request for all alerts:

```http
GET https://api.locusenergy.com/v3/sites/123/alerts?tz=UTC HTTP/1.1
Accept: application/json
Authorization: Bearer ACCESS_TOKEN
```

```shell
curl https://api.locusenergy.com/v3/sites/123/alerts?tz=UTC
  -X GET
  -H "Accept: application/json"
  -H "Authorization: Bearer ACCESS_TOKEN"
```

> Example response:

```json
{
    "statusCode": 200,
    "alerts": [
        {
            "id": 123,
            "componentId": 456,
            "alertType": "System Disconnect",
            "priority": "High",
            "start": "2015-11-01T12:00:00-00:00",
            "end": "2015-11-22T12:00:00-00:00",
            "updated": "2015-11-22T12:03:00-00:00"
        },
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
    ]
}
```

> Example updatedSince request:

```http
GET https://api.locusenergy.com/v3/sites/123/alerts?updatedSince=2014-11-20T00:00:00&tz=UTC HTTP/1.1
Accept: application/json
Authorization: Bearer ACCESS_TOKEN
```

```shell
curl https://api.locusenergy.com/v3/sites/123/alerts?updatedSince=2014-11-20T00:00:00&tz=UTC
  -X GET
  -H "Accept: application/json"
  -H "Authorization: Bearer ACCESS_TOKEN"
```

> Example response:

```json
{
    "statusCode": 200,
    "alerts": [
        {
            "id": 123,
            "componentId": 456,
            "alertType": "System Disconnect",
            "priority": "High",
            "start": "2014-11-01T12:00:00-00:00",
            "end": "2014-11-22T12:00:00-00:00",
            "updated": "2014-11-22T12:03:00-00:00"
        },
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
    ]
}
```

> Example openDuring request:

```http
GET https://api.locusenergy.com/v3/sites/123/alerts?openDuringMin=2014-09-01T00:00:00&openDuringMax=2015-10-01T00:00:00&tz=US/Pacific HTTP/1.1
Accept: application/json
Authorization: Bearer ACCESS_TOKEN
```

```shell
curl https://api.locusenergy.com/v3/sites/123/alerts?openDuringMin=2014-09-01T00:00:00&openDuringMax=2015-10-01T00:00:00&tz=US/Pacific
  -X GET
  -H "Accept: application/json"
  -H "Authorization: Bearer ACCESS_TOKEN"
```

> Example response:

```json
{
    "statusCode": 200,
    "alerts": [
        {
            "id": 123,
            "componentId": 456,
            "alertType": "System Disconnect",
            "priority": "High",
            "start": "2014-09-01T12:00:00-07:00",
            "end": "2015-09-02T12:00:00-07:00",
            "updated": "2015-09-02T12:00:00-07:00"
        },
        {
            "id": 78,
            "componentId": 90,
            "alertType": "Device Fault",
            "priority": "Medium",
            "start": "2015-09-01T12:00:00-07:00",
            "end": "2015-09-02T12:00:00-07:00",
            "updated": "2015-09-02T13:00:00-07:00",
            "descriptionShort": "VDC high",
            "descriptionLong": "A voltage higher than 2100 V is present on the DC bus. (Resettable)"
        }
    ]
}
```

This endpoint retrieves alerts for the site and [filter params](#filters) requested.

### Definition

`GET /v3/sites/{siteId}/alerts`

### Arguments

Argument | Description | Required? | Default
--- | --- | --- | ---
siteId | Unique identifier for the site | yes |
tz | Timezone for data requested | yes |
updatedSince | Timestamp since when the alerts have been updated. Format YYYY-MM-DDThh:mm:ss. | no |
openDuringMin | Timestamp at which the open during period starts. Format YYYY-MM-DDThh:mm:ss. | no |
openDuringMax | Timestamp at which the open during period ends. Format YYYY-MM-DDThh:mm:ss. | no |

### Returns

Returns an array of [alert objects](#alert-object).
