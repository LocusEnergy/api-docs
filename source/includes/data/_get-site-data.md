## Get data for site

> Example request:

```http
GET https://api.locusenergy.com/v3/sites/123/data?fields=W_avg,Wh_sum&start=2014-04-01T12:00:00&end=2014-04-01T13:01:00&tz=US/Pacific&gran=hourly HTTP/1.1
Accept: application/json
Authorization: Bearer ACCESS_TOKEN
```

```shell
curl https://api.locusenergy.com/v3/sites/123/data?fields=W_avg,Wh_sum&start=2014-04-01T12:00:00&end=2014-04-01T13:01:00&tz=US/Pacific&gran=hourly
  -X GET
  -H "Accept: application/json"
  -H "Authorization: Bearer ACCESS_TOKEN"
```

> Example response:

```json
{
  "statusCode": 200,
  "data": [
    {
      "id": 123,
      "ts": "2014-04-01T12:00:00-07:00",
      "W_avg": 23.717,
      "Wh_sum": 5936
    },
    {
      "id": 123,
      "ts": "2014-04-01T13:00:00-07:00",
      "W_avg": 10.373,
      "Wh_sum": 2372
    }
  ]
}
```

This endpoint retrieves data for the site, fields and time period requested.

### Definition

`GET /v3/sites/{siteId}/data`

### Arguments

Argument | Description | Required? | Default
--- | --- | --- | ---
siteId | Unique identifier for the site | yes |
fields | Comma-delimited list of valid [shortNames](#aggregations) | yes |
start | Timestamp of start period of request | yes |
end | Timestamp of end period of request | yes |
tz | Timezone for data requested | yes |
gran | Granularity for data requested. Options are 5min, 15min, hourly, daily, monthly, yearly | yes |

### Returns

Returns an array of [data objects](#data-object).