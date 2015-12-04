## Refreshing an Access Token

> Example request:

```http
POST https://api.locusenergy.com/oauth/token HTTP/1.1
Content-Type: application/x-www-form-urlencoded
grant_type=refresh_token&client_id=CLIENT_ID&client_secret=CLIENT_SECRET&refresh_token=REFRESH_TOKEN
```

```shell
curl https://api.locusenergy.com/oauth/token 
  -X POST
  -H "Content-Type: application/x-www-form-urlencoded"
  -d 'grant_type=refresh_token&client_id=CLIENT_ID&client_secret=CLIENT_SECRET&refresh_token=REFRESH_TOKEN'
```

> Make sure to replace `CLIENT_ID` and `CLIENT_SECRET` with your API credentials. You should have a `REFRESH_TOKEN` from a previously successful authentication attempt via the [Resource Owner Password flow](#resource-owner-password-flow)

> Example response:

```json
{
    "access_token": "41e818b29780637494d9026760d40b51",
    "issued_at": 1430347010,
    "token_type": "bearer",
    "expires_in": 3600
}
```

The API uses the [OAuth 2 guidelines for refreshing an access token](https://tools.ietf.org/html/rfc6749#section-6). If successful, an `access_token` is returned with an accompanying `refresh_token`. Once the `access_token` expires, you can [refresh it](#refreshing-an-access-token) by using the `refresh_token`.

### Definition

`POST /oauth/token`

### Arguments

Parameter|Required?|Default|Description
---|---|---|---
grant_type|yes||The string "refresh_token". This defines the OAuth 2.0 flow.
client_id|yes||The `client_id` for your application. Obtain this from your account manager.
client_secret|yes||The `client_secret` for your application. Obtain this from your account manager.
refresh_token|yes||The `refresh_token` from a previously successful authentication attempt.