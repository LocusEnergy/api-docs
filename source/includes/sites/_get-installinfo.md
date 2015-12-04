## Get install info

> Example request:

```http
GET https://api.locusenergy.com/v3/sites/123/installinfo HTTP/1.1
Accept: application/json
Authorization: Bearer ACCESS_TOKEN
```

```shell
curl https://api.locusenergy.com/v3/sites/123/installinfo
  -X GET
  -H "Accept: application/json"
  -H "Authorization: Bearer ACCESS_TOKEN"
```

> Example response:

```json
{
  "statusCode": 200,
  "installer": "ABC Solar",
  "installDate": "2014-05-08",
  "ptoDate": "2014-05-14",
  "startupDate": "2014-05-14",
  "uninstallDate": "2014-06-01"
}
```

This endpoint retrieves a site installinfo object.

### Definition

`GET /v3/sites/{siteId}/installinfo`

### Arguments

Argument | Description | Required? | Default
--- | --- | --- | ---
siteId | Unique identifier for the site | yes |

### Returns

Returns a site installinfo object.

Attribute | Type| Description | Always returned?
---|---|---|---
installer | String | Installer of the site | no
installCrew | String | Install crew of the site | no
installDate | String (yyyy-mm-dd) | Install date of the site | no
ptoDate | String (yyyy-mm-dd) | Permission to operate date of the site | no
startupDate | String (yyyy-mm-dd) | Startup date of the site | no
uninstallCrew | String | Uninstall crew of the site | no
uninstallDate | String (yyyy-mm-dd) | Uninstall date of the site | no