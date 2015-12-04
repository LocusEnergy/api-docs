## Get model settings

> Example request:

```http
GET https://api.locusenergy.com/v3/sites/123/modelsettings HTTP/1.1
Accept: application/json
Authorization: Bearer ACCESS_TOKEN
```

```shell
curl https://api.locusenergy.com/v3/sites/123/modelsettings
  -X GET
  -H "Accept: application/json"
  -H "Authorization: Bearer ACCESS_TOKEN"
```

> Example response:

```json
{
  "statusCode": 200,
  "size": 1023.4,
  "mismatch": 98,
  "diodesAndConnections": 99,
  "dcWiring": 98,
  "soiling": 95,
  "sunTracking": 100,
  "nameplate": 100,
  "acWiring": 99,
  "transformer": 100,
  "tmy3Id": 724095
}
```

This endpoint retrieves a site modelsettings object.

### Definition

`GET /v3/sites/{siteId}/modelsettings`

### Arguments

Argument | Description | Required? | Default
--- | --- | --- | ---
siteId | Unique identifier for the site | yes |

### Returns

Returns a site modelsettings object.

Attribute | Type| Description | Always returned?
---|---|---|---
size | Float | Installed system size (kw DC) | no
mismatch | Integer | PV model parameter | yes
diodesAndConnections | Integer | PV model parameter | yes
dcWiring | Integer | PV model parameter | yes
soiling | Integer | PV model parameter | yes
sunTracking | Integer | PV model parameter | yes
nameplate | Integer | PV model parameter | yes
acWiring | Integer | PV model parameter | yes
transformer | Integer | PV model parameter | yes
tmy3Id | Integer | PV model parameter | no