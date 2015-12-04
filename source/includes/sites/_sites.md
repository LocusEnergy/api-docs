# Sites

## Site object

```json
{
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

### Attributes

Attribute | Type| Description | Always returned?
---|---|---|---
id | Integer | Unique identifier for the site | yes
clientId | Integer | Identifier for the parent client | yes
name | String | Name of the site | yes
address1 | String | Address line 1 | yes
address2 | String | Address line 2 | no
locale3 | String | Within the US, city | yes
locale1 | String | Within the US, state | yes
localeCode1 | String | Within the US, state abbreviation | yes
postalCode | String | Within the US, zip code | yes
countryCode | String | Country name abbreviation | yes
latitude | Float | Latitude | no
longitude | Float | Longitude | no