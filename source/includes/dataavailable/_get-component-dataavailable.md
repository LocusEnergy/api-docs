## Get data available for component

> Example request:

```http
GET https://api.locusenergy.com/v3/component/123/dataavailable HTTP/1.1
Accept: application/json
Authorization: Bearer ACCESS_TOKEN
```

```shell
curl https://api.locusenergy.com/v3/component/123/dataavailable
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
      "baseField": "A",
      "longName": "AC Current",
      "source": "Measured",
      "unit": "A",
      "aggregations": [
        {
          "shortName": "A_avg",
          "aggregation": "avg"
        },
        {
          "shortName": "A_max",
          "aggregation": "max"
        },
        {
          "shortName": "A_min",
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
      "baseField": "Hz",
      "longName": "AC Frequency",
      "source": "Measured",
      "unit": "Hz",
      "aggregations": [
        {
          "shortName": "Hz_avg",
          "aggregation": "avg"
        },
        {
          "shortName": "Hz_max",
          "aggregation": "max"
        },
        {
          "shortName": "Hz_min",
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
      "baseField": "PF",
      "longName": "AC Power Factor",
      "source": "Measured",
      "unit": "",
      "aggregations": [
        {
          "shortName": "PF_avg",
          "aggregation": "avg"
        },
        {
          "shortName": "PF_max",
          "aggregation": "max"
        },
        {
          "shortName": "PF_min",
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
      "baseField": "PI_m",
      "longName": "Performance Index",
      "source": "Modeled",
      "unit": "",
      "fieldParameters": [
        {
          "param": "modelType",
          "values": [
            "singleDiode"
          ]
        },
        {
          "param": "irradianceSource",
          "values": [
            "weatherStation",
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
      "baseField": "PPV",
      "longName": "AC Voltage L-L",
      "source": "Measured",
      "unit": "V",
      "aggregations": [
        {
          "shortName": "PPV_avg",
          "aggregation": "avg"
        },
        {
          "shortName": "PPV_max",
          "aggregation": "max"
        },
        {
          "shortName": "PPV_min",
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
      "baseField": "PhV",
      "longName": "AC Voltage L-N",
      "source": "Measured",
      "unit": "V",
      "aggregations": [
        {
          "shortName": "PhV_avg",
          "aggregation": "avg"
        },
        {
          "shortName": "PhV_max",
          "aggregation": "max"
        },
        {
          "shortName": "PhV_min",
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
      "baseField": "VA",
      "longName": "AC Apparent Power",
      "source": "Measured",
      "unit": "VA",
      "aggregations": [
        {
          "shortName": "VA_avg",
          "aggregation": "avg"
        },
        {
          "shortName": "VA_max",
          "aggregation": "max"
        },
        {
          "shortName": "VA_min",
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
      "baseField": "VAR",
      "longName": "AC Reactive Power",
      "source": "Measured",
      "unit": "VAR",
      "aggregations": [
        {
          "shortName": "VAR_avg",
          "aggregation": "avg"
        },
        {
          "shortName": "VAR_max",
          "aggregation": "max"
        },
        {
          "shortName": "VAR_min",
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
      "baseField": "W_m",
      "longName": "AC Power",
      "source": "Modeled",
      "unit": "W",
      "fieldParameters": [
        {
          "param": "modelType",
          "values": [
            "singleDiode"
          ]
        },
        {
          "param": "irradianceSource",
          "values": [
            "weatherStation",
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
      "baseField": "Wh_m",
      "longName": "AC Energy",
      "source": "Modeled",
      "unit": "Wh",
      "fieldParameters": [
        {
          "param": "modelType",
          "values": [
            "singleDiode"
          ]
        },
        {
          "param": "irradianceSource",
          "values": [
            "weatherStation",
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
      "baseField": "WphA",
      "longName": "AC Power A",
      "source": "Measured",
      "unit": "W",
      "aggregations": [
        {
          "shortName": "WphA_avg",
          "aggregation": "avg"
        },
        {
          "shortName": "WphA_max",
          "aggregation": "max"
        },
        {
          "shortName": "WphA_min",
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
      "baseField": "WphB",
      "longName": "AC Power B",
      "source": "Measured",
      "unit": "W",
      "aggregations": [
        {
          "shortName": "WphB_avg",
          "aggregation": "avg"
        },
        {
          "shortName": "WphB_max",
          "aggregation": "max"
        },
        {
          "shortName": "WphB_min",
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
      "baseField": "WphC",
      "longName": "AC Power C",
      "source": "Measured",
      "unit": "W",
      "aggregations": [
        {
          "shortName": "WphC_avg",
          "aggregation": "avg"
        },
        {
          "shortName": "WphC_max",
          "aggregation": "max"
        },
        {
          "shortName": "WphC_min",
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
    }
  ]
}
```

This endpoint retrieves a list of available data types for a component.

### Definition

`GET /v3/component/{componentId}/dataavailable`

### Arguments

Argument | Description | Required? | Default
--- | --- | --- | ---
componentId | Unique identifier for the component | yes |

### Returns

Returns an array of [base field objects](#base-field-object).