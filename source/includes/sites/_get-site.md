## Get site

> Example request:

```http
GET https://api.locusenergy.com/v3/sites/123 HTTP/1.1
Accept: application/json
Authorization: Bearer ACCESS_TOKEN
```

```shell
curl https://api.locusenergy.com/v3/sites/123
  -X GET
  -H "Accept: application/json"
  -H "Authorization: Bearer ACCESS_TOKEN"
```

> Example response:

```json
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
}
```

This endpoint retrieves a site object.

### Definition

`GET /v3/sites/{siteId}`

### Arguments

Argument | Description | Required? | Default
--- | --- | --- | ---
siteId | Unique identifier for the site | yes |

### Returns

Returns a [site object](#site-object).