## Get client

> Example request:

```http
GET https://api.locusenergy.com/v3/clients/123 HTTP/1.1
Accept: application/json
Authorization: Bearer ACCESS_TOKEN
```

```shell
curl https://api.locusenergy.com/v3/clients/123
  -X GET
  -H "Accept: application/json"
  -H "Authorization: Bearer ACCESS_TOKEN"
```

> Example response:

```json
{
  "statusCode": 200,
  "id": 123,
  "partnerId": 456,
  "tz": "US/Eastern",
  "firstName": "Test",
  "lastName": "System",
  "email": "test@aol.com"
}
```

This endpoint retrieves a client object.

### Definition

`GET /v3/clients/{clientId}`

### Arguments

Argument | Description | Required? | Default
--- | --- | --- | ---
clientId | Unique identifier for the client | yes |

### Returns

Returns a [client object](#client-object).