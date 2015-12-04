## Get sites for a client

> Example request:

```http
GET https://api.locusenergy.com/v3/clients/456/sites HTTP/1.1
Accept: application/json
Authorization: Bearer ACCESS_TOKEN
```

```shell
curl https://api.locusenergy.com/v3/clients/456/sites
  -X GET
  -H "Accept: application/json"
  -H "Authorization: Bearer ACCESS_TOKEN"
```

> Example response:

```json
{
  "statusCode": 200,
  "sites": [
    {
      "statusCode": 200,
      "id": 123,
      "clientId": 456,
      "name": "Test Site",
      "address1": "657 Mission St",
      "address2": "",
      "locale3": "San Francisco",
      "locale1": "California",
      "localeCode1": "CA",
      "postalCode": "94105",
      "countryCode": "US"
    },
    {
      "statusCode": 200,
      "id": 789,
      "clientId": 456,
      "name": "Test Site 2",
      "address1": "2 Hudson Place",
      "address2": "",
      "locale3": "Hoboken",
      "locale1": "New Jersey",
      "localeCode1": "NJ",
      "postalCode": "07030",
      "countryCode": "US"
    }
  ]
}
```

This endpoint retrieves sites for a client.

### Definition

`GET /v3/clients/{clientId}`

### Arguments

Argument | Description | Required? | Default
--- | --- | --- | ---
clientId | Unique identifier for the client | yes |

### Returns

Returns a [site object](#site-object).