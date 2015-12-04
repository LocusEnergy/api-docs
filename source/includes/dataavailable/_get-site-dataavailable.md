## Get data available for site

> Example request:

```http
GET https://api.locusenergy.com/v3/sites/123/dataavailable HTTP/1.1
Accept: application/json
Authorization: Bearer ACCESS_TOKEN
```

```shell
curl https://api.locusenergy.com/v3/sites/123/dataavailable
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
            "baseField": "GHI_m",
            "longName": "Irradiance Global Horizontal",
            "source": "Modeled",
            "unit": "W/m²",
            "aggregations": [
                {
                    "shortName": "GHI_m_avg",
                    "aggregation": "avg"
                },
                {
                    "shortName": "GHI_m_max",
                    "aggregation": "max"
                },
                {
                    "shortName": "GHI_m_min",
                    "aggregation": "min"
                }
            ],
            "granularities": [
                "hourly",
                "daily",
                "monthly",
                "yearly"
            ]
        },
        {
            "baseField": "GHIh_m",
            "longName": "Insolation Global Horizontal",
            "source": "Modeled",
            "unit": "Wh/m²",
            "aggregations": [
                {
                    "shortName": "GHIh_m_sum",
                    "aggregation": "sum"
                }
            ],
            "granularities": [
                "hourly",
                "daily",
                "monthly",
                "yearly"
            ]
        },
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
            "baseField": "W_m",
            "longName": "AC Power",
            "source": "Modeled",
            "unit": "W",
            "aggregations": [
                {
                    "shortName": "W_m_avg",
                    "aggregation": "avg"
                }
            ],
            "fieldParameters": [
                {
                    "param": "modelType",
                    "values": [
                        "singleDiode",
                        "simple"
                    ]
                },
                {
                    "param": "irradianceSource",
                    "values": [
                        "TMY"
                    ]
                },
                {
                    "param": "inverterClipping",
                    "values": [
                        "true",
                        "false"
                    ]
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
        },
        {
            "baseField": "Wh_e",
            "longName": "AC Energy",
            "source": "Expected",
            "unit": "Wh",
            "aggregations": [
                {
                    "shortName": "Wh_e_sum",
                    "aggregation": "sum"
                }
            ],
            "granularities": [
                "daily",
                "monthly",
                "yearly"
            ]
        },
        {
            "baseField": "Wh_m",
            "longName": "AC Energy",
            "source": "Modeled",
            "unit": "Wh",
            "aggregations": [
                {
                    "shortName": "Wh_m_sum",
                    "aggregation": "sum"
                }
            ],
            "fieldParameters": [
                {
                    "param": "modelType",
                    "values": [
                        "singleDiode",
                        "simple"
                    ]
                },
                {
                    "param": "irradianceSource",
                    "values": [
                        "TMY"
                    ]
                },
                {
                    "param": "inverterClipping",
                    "values": [
                        "true",
                        "false"
                    ]
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

This endpoint retrieves a list of available data types for a site.

### Definition

`GET /v3/sites/{siteId}/dataavailable`

### Arguments

Argument | Description | Required? | Default
--- | --- | --- | ---
siteId | Unique identifier for the site | yes |

### Returns

Returns an array of [base field objects](#base-field-object).