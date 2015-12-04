## Client Credentials

> Example request:

```http
POST https://api.locusenergy.com/oauth/token HTTP/1.1
Content-Type: application/x-www-form-urlencoded
grant_type=client_credentials&client_id=YOUR_CLIENT_ID&client_secret=YOUR_CLIENT_SECRET
```

```shell
curl https://api.locusenergy.com/oauth/token 
  -X POST
  -H "Content-Type: application/x-www-form-urlencoded"
  -d 'grant_type=client_credentials&client_id=YOUR_CLIENT_ID&client_secret=YOUR_CLIENT_SECRET'
```

> Make sure to replace `YOUR_CLIENT_ID` and `YOUR_CLIENT_SECRET` with your API credentials.

> Example response:

```json
{
    "access_token": "ef4ace9dc2574925b8708d05fbb9da7z",
    "issued_at": 1425672574,
    "expires_in": 3600
}
```

For API credentials created before April 30, 2015, the API uses the [OAuth 2 Client Credentials flow](https://tools.ietf.org/html/rfc6749#section-4.4). If successful, an `access_token` is returned with a 1 hour lifetime. Once the `access_token` expires, you will need to authenticate again to get a new one.

<aside class="warning">The Client Credentials flow is no longer supported for any API credentials created after April 30, 2015. In order to improve security and user experience, all API credentials created after April 30, 2015 use the Resource Owner Password flow. Any credentials that work with the Client Credentials flow will not work with the Resource Owner Password flow. Please contact <a href="mailto:support@locusenergy.com">support</a> with any questions.</aside>

### Definition

`POST /oauth/token`

### Arguments

Parameter|Required?|Default|Description
---|---|---|---
grant_type|yes||The string "client_credentials". This defines the OAuth 2.0 flow.
client_id|yes||The `client_id` for your application. Obtain this from your account manager.
client_secret|yes||The `client_secret` for your application. Obtain this from your account manager.