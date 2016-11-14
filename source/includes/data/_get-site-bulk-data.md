## Get bulk data for all sites

> Example request:

```http
GET https://api.locusenergy.com/v3/partners/111/sites/data?start=2014-04-01T00:00:00&end=2014-05-01T01:00:00&tz=US/Pacific&gran=monthly&fields=Wh_sum HTTP/1.1
Accept: application/json
Authorization: Bearer ACCESS_TOKEN
```

```shell
curl https://api.locusenergy.com/v3/partners/111/sites/data?start=2014-04-01T00:00:00&end=2014-05-01T01:00:00&tz=US/Pacific&gran=monthly&fields=Wh_sum
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
      "Wh_sum": 5936
    },
    {
      "id": 123,
      "ts": "2014-05-01T13:00:00-07:00",
      "Wh_sum": 2372
    },
    {
      "id": 456,
      "ts": "2014-04-01T12:00:00-07:00",
      "Wh_sum": 21324
    },
    {
      "id": 456,
      "ts": "2014-05-01T13:00:00-07:00",
      "Wh_sum": 25234
    }
  ]
}
```

Bulk data allows users to obtain data for all sites with one API request. The advantages / differences with the data API are:
- Grab data for all sites in one call
- Site data only
- Monthly granularity only
- 1 year max data for a single call
- Limited number of supported fields

### Definition

`GET /v3/partners/{partnerId}/sites/data`

### Arguments

Argument | Description | Required? | Default
--- | --- | --- | ---
partnerId | Unique identifier for the partner | yes |
fields | Comma-delimited list of valid [shortNames](#aggregations) | yes |
start | Timestamp of start period of request | yes |
end | Timestamp of end period of request. `end` can be a maximum of 1 year after `start` | yes |
tz | Timezone for data requested | yes |
gran | Granularity for data requested. Only valid option is monthly | yes |

### Returns

Returns an array of [data objects](#data-object).

### Additional Notes

**Prorating**

In the Locus platform, a prorated value is defined as a value that is scaled based on time.  When a site Startup Date is set, then prorated fields will return only the data on and after this date and nothing before it (see the SolarOS Support tab on how to configure a Startup Date).  In the case of a Startup Date in the middle of the month, a partial value is returned for the month corresponding to the remaining monthly data on and after the Startup Date.

When a Startup Date is not set, then all energy (Wh_sum) values are returned; however, other fields will return data only for months on and after the time of the first measured energy value.  Only whole month data values are returned (i.e. partial months are not returned based on the first day of energy).

Each field if prorated as follows:

- `Wh_sum`: Not prorated.
- `Whp_sum`: Prorated based on startup date.
- `Wh_e_sum`: Prorated based on startup date and the current date. If the startup date doesn’t exist, then the entire month and subsequent months are only returned for when the site first had a measured energy value.  If there is no meter data or startup date then nothing is returned.
- `GHIh_t_sum`: Prorated based on startup date and the current date. If the startup date doesn’t exist, then the entire month and subsequent months are only returned for when the site first had a measured energy value.  If there is no meter data or startup date then nothing is returned.
- `EER_avg`: All the prorating happens in the other fields.
- `GHIh_m_sum`: Not prorated based on startup date, but the entire month and subsequent months are only returned for when the site first had a measured energy value. If there is no meter data then nothing is returned.
- `GHIhp_m_sum`: Prorated based on startup date. If the startup date doesn’t exist, then the entire month and subsequent months are only returned for when the site first had a measured energy value. If there is no meter data or startup date then nothing is returned.
- `GEER_avg`: All the prorating happens in the other fields.

**Timestamp Conventions**

Just as with the data request, all timestamps returned are associated with the first timestamp of the granular period (1st day of the month at T00:00:00 for monthly granularity) and are >= start and < end. For example:

- start = 2015-03-15T00:00:00 and end = 2015-05-02T00:00:00 returns the following months:
    - 2015-04-01T00:00:00
    - 2015-05-01T00:00:00
- start = 2015-03-01T00:00:00 and end = 2015-05-01T00:00:00 returns the following months:
    - 2015-03-01T00:00:00
    - 2015-04-01T00:00:00

**Null Values for Sites Without Certain Data Fields**

With individual data requests, a thorough data available check is performed to make sure that the user isn’t being guided to ask for data that doesn’t exist for a given entity; however, for the Bulk Data API on the partner level, this check is complex. There will be cases where some sites would return no data or even an error for a given shortName when the data is fetched directly via the Data API. In these cases the Bulk Data API will return a null value for the shortName in question. For example, if a given site does not have a valid address it cannot be geolocated, and hence it cannot have a GHIh_t_sum. In this case the Data API would throw and error; however, the Bulk Data API will return a null value for this field.

Note: A site without any components will not return a data object.