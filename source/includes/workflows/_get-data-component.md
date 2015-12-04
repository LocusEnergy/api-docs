## Getting data for a component

> Step 1: Get the componentId

```http
GET https://api.locusenergy.com/v3/partners/123/components?nodeId=ABC.123 HTTP/1.1
Accept: application/json
Authorization: Bearer ACCESS_TOKEN
```

```shell
curl https://api.locusenergy.com/v3/partners/123/components?nodeId=ABC.123
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
            "siteId": 3393714,
            "clientId": 419010,
            "parentId": 3393714,
            "parentType": "SITE",
            "nodeId": "ABC.123",
            "name": "PV Meter",
            "nodeType": "METER",
            "application": "GENERATION",
            "generationType": "SOLAR",
            "oem": "Locus Energy",
            "model": "LGate 120",
            "isConceptualNode": false
        }
    ]
}
```

> Step 2: Get component data available

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

> Step 3: Get component data

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

One of the most common use cases of our API is obtaining data for a component for which you know the node ID. It's a three step process to get data that is described below. Example requests and responses are provided to the right.

1. Get the component ID (Locus API identifier) for the node ID (also known as the MAC ID) using the [get components for a partner endpoint](#get-components-for-a-partner). For example, if your partner ID is 123 and the node ID of the component in question is ABC.123, you would do a `GET https://api.locusenergy.com/v3/partners/123/components?nodeId=ABC.123`.

2. Once you have the component ID, then you can ask what [data is available for that component](#get-data-available-for-component). This is important because different types of components have different types of data. For example, a meter might have energy and power data, while a weather station might have irradiance and ambient temperature. Assuming that the componentId resulting from the previous call was `54369`, the call would like like `GET https://api.locusenergy.com/v3/components/54369/dataavailable`.

3. For your node ID, you now know the component ID and the data available that you can ask for. You're now ready to [ask for that data](#get-data-for-component), supplying a comma-separated list of fields from the dataavailable baseField shortNames. Following this example, a possible data call could be `GET https://api.locusenergy.com/v3/components/54369/data?start=2014-01-01T00:00:00&end=2014-03-01T00:00:00&tz=US/Pacific&gran=monthly&fields=W_avg,Wh_sum`.