## Resource Owner Password

> Example request:

```http
POST https://api.locusenergy.com/oauth/token HTTP/1.1
Content-Type: application/x-www-form-urlencoded
grant_type=password&client_id=CLIENT_ID&client_secret=CLIENT_SECRET&username=USERNAME&password=PASSWORD
```

```shell
curl https://api.locusenergy.com/oauth/token 
  -X POST
  -H "Content-Type: application/x-www-form-urlencoded"
  -d 'grant_type=password&client_id=CLIENT_ID&client_secret=CLIENT_SECRET&username=USERNAME&password=PASSWORD'
```

> Make sure to replace `CLIENT_ID` and `CLIENT_SECRET` with your API credentials. `USERNAME` and `PASSWORD` are needed for the user on who's behalf the application is making the request.

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

The API uses the [OAuth 2 Resource Owner Password Credentials flow](https://tools.ietf.org/html/rfc6749#section-4.3). If successful, an `access_token` is returned with an accompanying `refresh_token`. Once the `access_token` expires, you can [refresh it](#refreshing-an-access-token) by using the `refresh_token`.

<aside class="notice">Most API credentials for customers use this flow. If your credentials don't work for this flow, please try [Client Credentials](#client-credentials). If you continue to experience trouble authenticating, please contact <a href="mailto:support@locusenergy.com">support</a>.</aside>

### Definition

`POST /oauth/token`

### Arguments

Parameter|Required?|Default|Description
---|---|---|---
grant_type|yes||The string "password". This defines the OAuth 2.0 flow.
client_id|yes||The `client_id` for your application. Obtain this from your account manager.
client_secret|yes||The `client_secret` for your application. Obtain this from your account manager.
username|yes||The user's SolarNOC username.
password|yes||The user's SolarNOC password.