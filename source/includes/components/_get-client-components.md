## Get components for a client

> Example request:

```http
GET https://api.locusenergy.com/v3/clients/419010/components HTTP/1.1
Accept: application/json
Authorization: Bearer ACCESS_TOKEN
```

```shell
curl https://api.locusenergy.com/v3/clients/419010/components
  -X GET
  -H "Accept: application/json"
  -H "Authorization: Bearer ACCESS_TOKEN"
```

> Example response:

```json
{
  "statusCode": 200,
  "components": [
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
      "isConceptualNode": false
    },
    {
      "id": 54369,
      "siteId": 3393714,
      "clientId": 419010,
      "parentId": 2050424,
      "parentType": "COMPONENT",
      "nodeId": "OB.TESTNODE.44",
      "name": "AE Inverter E1",
      "nodeType": "INVERTER",
      "application": "GENERATION",
      "generationType": "SOLAR",
      "oem": "Advanced Energy",
      "model": "AE 500NX 480V",
      "isConceptualNode": false
    }
  ]
}
```

This endpoint retrieves components for a client.

### Definition

`GET /v3/clients/{clientId}/components`

### Arguments

Argument | Description | Required? | Default
--- | --- | --- | ---
clientId | Unique identifier for the client | yes |

### Returns

Returns an array of [component objects](#component-object).