## Get clients for partner

> Example request:

```http
GET https://api.locusenergy.com/v3/partners/456/clients HTTP/1.1
Accept: application/json
Authorization: Bearer ACCESS_TOKEN
```

```shell
curl https://api.locusenergy.com/v3/partners/456/clients
  -X GET
  -H "Accept: application/json"
  -H "Authorization: Bearer ACCESS_TOKEN"
```

> Example response:

```json
{
  "statusCode": 200,
  "clients": [
    {
      "id": 123,
      "partnerId": 456,
      "tz": "US/Eastern",
      "firstName": "Test",
      "lastName": "System",
      "email": "test@locusenergy.com"
    },
    {
      "id": 789,
      "partnerId": 456,
      "tz": "US/Pacific",
      "firstName": "Another",
      "lastName": "System",
      "email": "another@locusenergy.com"
    }
  ]
}
```

This endpoint retrieves clients for a partner.

### Definition

`GET /v3/partners/{partnerId}/clients`

### Arguments

Argument | Description | Required? | Default
--- | --- | --- | ---
partnerId | Unique identifier for the partner | yes |

### Returns

Returns an array of [client objects](#client-object).