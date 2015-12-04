## Get component

> Example request:

```http
GET https://api.locusenergy.com/v3/components/54369 HTTP/1.1
Accept: application/json
Authorization: Bearer ACCESS_TOKEN
```

```shell
curl https://api.locusenergy.com/v3/components/54369
  -X GET
  -H "Accept: application/json"
  -H "Authorization: Bearer ACCESS_TOKEN"
```

> Example response:

```json
{
  "statusCode": 200,
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
  "isConceptualNode": false
}
```

This endpoint retrieves a component object.

### Definition

`GET /v3/components/{componentId}`

### Arguments

Argument | Description | Required? | Default
--- | --- | --- | ---
componentId | Unique identifier for the component | yes |

### Returns

Returns a [component object](#component-object).