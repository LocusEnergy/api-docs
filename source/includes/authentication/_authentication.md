# Authentication

The authentication mechanism is based off of the [OAuth 2 guidelines](https://tools.ietf.org/html/rfc6749). Once an `access_token` is received, it must be used with all subsequent non-authentication API requests.

## Authentication object

> Example response:

```json
{
    "access_token": "41e818b29780637494d9026760d40b51",
    "issued_at": 1430347010,
    "token_type": "bearer",
    "refresh_token": "c27720f61b77245731c2e3ce4647ddad",
    "expires_in": 3600
}
```

### Attributes

Attribute | Type| Description | Always returned?
---|---|---|---
access_token | String | Randomly generated string to serve as authentication token for subsequent requests | yes
issued_at | Integer | Unix timestamp for when `access_token` was issued | yes
expires_in | Integer | Seconds until the `access_token` expires | yes
token_type | String | The type of the token being returned | yes
refresh_token | String | Randomly generated string. This can be used to obtain more access tokens instead of supplying a username and password | no. Only returned for password grant type.