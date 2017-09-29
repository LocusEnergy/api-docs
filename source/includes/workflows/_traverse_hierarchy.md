## Traversing the hierarchy to get data

> Step 1: Get a list of sites

```http
GET https://api.locusenergy.com/v3/partners/123/sites HTTP/1.1
Accept: application/json
Authorization: Bearer ACCESS_TOKEN
```

```shell
curl https://api.locusenergy.com/v3/partners/123/sites
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
            "countryCode": "US",
            "locationTimezone": "America/Los_Angeles"
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
            "countryCode": "US",
            "locationTimezone": "America/New_York"
        }
    ]
}
```

> Step 2: Get components for a site

```http
GET https://api.locusenergy.com/v3/sites/789/components HTTP/1.1
Accept: application/json
Authorization: Bearer ACCESS_TOKEN
```

```shell
curl https://api.locusenergy.com/v3/sites/789/components
  -X GET
  -H "Accept: application/json"
  -H "Authorization: Bearer ACCESS_TOKEN"
```

> Example response:

```json
{
    "statusCode": 200,
    "components": [
        {
            "id": 54369,
            "siteId": 789,
            "clientId": 419010,
            "parentId": 789,
            "parentType": "SITE",
            "nodeId": "OB.001EC1111DC9.1",
            "name": "PV Meter",
            "nodeType": "METER",
            "application": "GENERATION",
            "generationType": "SOLAR",
            "oem": "Locus Energy",
            "model": "LGate 120",
            "isConceptualNode": false
        },
        {
            "id": 54369,
            "siteId": 789,
            "clientId": 419010,
            "parentId": 54369,
            "parentType": "COMPONENT",
            "nodeId": "OB.TESTNODE.44",
            "name": "AE Inverter E1",
            "nodeType": "INVERTER",
            "application": "GENERATION",
            "generationType": "SOLAR",
            "oem": "Advanced Energy",
            "model": "AE 500NX 480V",
            "isConceptualNode": false
        }
    ]
}
```

> Step 3: Get component data available

```http
GET https://api.locusenergy.com/v3/components/54369/dataavailable HTTP/1.1
Accept: application/json
Authorization: Bearer ACCESS_TOKEN
```

```shell
curl https://api.locusenergy.com/v3/components/54369/dataavailable
  -X GET
  -H "Accept: application/json"
  -H "Authorization: Bearer ACCESS_TOKEN"
```

> Example response:

```json
{
    "statusCode": 200,
    "baseFields": [
        {
            "baseField": "W",
            "longName": "AC Power",
            "source": "Measured",
            "unit": "W",
            "aggregations": [
                {
                    "shortName": "W_avg",
                    "aggregation": "avg"
                },
                {
                    "shortName": "W_max",
                    "aggregation": "max"
                },
                {
                    "shortName": "W_min",
                    "aggregation": "min"
                }
            ],
            "granularities": [
                "5min",
                "15min",
                "hourly",
                "daily",
                "monthly",
                "yearly"
            ]
        },
        {
            "baseField": "Wh",
            "longName": "AC Energy",
            "source": "Measured",
            "unit": "Wh",
            "aggregations": [
                {
                    "shortName": "Wh_sum",
                    "aggregation": "sum"
                }
            ],
            "granularities": [
                "5min",
                "15min",
                "hourly",
                "daily",
                "monthly",
                "yearly"
            ]
        }
    ]
}
```

> Step 4: Get component data

```http
GET https://api.locusenergy.com/v3/components/54369/data?start=2014-01-01T00:00:00&end=2014-03-01T00:00:00&tz=US/Pacific&gran=monthly&fields=W_avg,Wh_sum HTTP/1.1
Accept: application/json
Authorization: Bearer ACCESS_TOKEN
```

```shell
curl https://api.locusenergy.com/v3/components/54369/data?start=2014-01-01T00:00:00&end=2014-03-01T00:00:00&tz=US/Pacific&gran=monthly&fields=W_avg,Wh_sum
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
            "id": 54369,
            "ts": "2014-01-01T00:00:00-07:00",
            "Wh_sum": 1234.5,
            "W_avg": 567
        },
        {
            "id": 54369,
            "ts": "2014-02-01T00:00:00-07:00",
            "Wh_sum": 1252.4,
            "W_avg": 684.756
        }
    ]
}
```

Each user has access to a list of sites and each site has a list of children components. You can traverse this hierarchy through the API in order to get the data you need.

1. [Get the list of sites for your partner](#get-partner-sites). Your partner ID was given to you by your account manager. For more info on the partner ID, please see the [getting started](#getting-started) section. If your partner ID is `123`, for example, this call would be `GET https://api.locusenergy.com/v3/partners/123/components`.
1. Choose a site from the result of step 1 and use that site ID to [get a list of children components](#get-site-components). If the desired site ID was `789`, this call would be `GET https://api.locusenergy.com/v3/sites/789/components`.
1. Select the component ID from the results of step 2. Once you have the component ID, then you can ask what [data is available for that component](#get-data-available-for-component). This is important because different types of components have different types of data. For example, a meter might have energy and power data, while a weather station might have irradiance and ambient temperature. Assuming that the component ID resulting from the previous call was `54369`, the call would look like `GET https://api.locusenergy.com/v3/components/54369/dataavailable`.
1. For your node ID, you now know the component ID and the data available that you can ask for. You're now ready to [ask for that data](#get-data-for-component), supplying a comma-separated list of fields from the dataavailable baseField shortNames. Following this example, a possible data call could be `GET https://api.locusenergy.com/v3/components/54369/data?start=2014-01-01T00:00:00&end=2014-03-01T00:00:00&tz=US/Pacific&gran=monthly&fields=W_avg,Wh_sum`.