## Get bulk dataavailable

> Example request:

```http
GET https://api.locusenergy.com/v3/partners/111/sites/dataavailable HTTP/1.1
Accept: application/json
Authorization: Bearer ACCESS_TOKEN
```

```shell
curl https://api.locusenergy.com/v3/partners/111/sites/dataavailable
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
        "monthly"
      ]
    },
    {
      "baseField": "Whp",
      "longName": "AC Energy (prorated)",
      "source": "Measured",
      "unit": "Wh",
      "aggregations": [
        {
          "shortName": "Whp_sum",
          "aggregation": "sum"
        }
      ],
      "granularities": [
        "monthly"
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
        "monthly"
      ]
    },
    {
      "baseField": "GHIh_m",
      "longName": "Insolation Global Horizontal",
      "source": "Modeled",
      "unit": "Wh/m&#178;",
      "aggregations": [
        {
          "shortName": "GHIh_m_sum",
          "aggregation": "sum"
        }
      ],
      "granularities": [
        "monthly"
      ]
    },
    {
      "baseField": "GHIhp_m",
      "longName": "Insolation Global Horizontal (prorated)",
      "source": "Modeled",
      "unit": "Wh/m&#178;",
      "aggregations": [
        {
          "shortName": "GHIhp_m_sum",
          "aggregation": "sum"
        }
      ],
      "granularities": [
        "monthly"
      ]
    },
    {
      "baseField": "GHIh_t",
      "longName": "Insolation Global Horizontal",
      "source": "Expected",
      "unit": "Wh/m&#178;",
      "aggregations": [
        {
          "shortName": "GHIh_t_sum",
          "aggregation": "sum"
        }
      ],
      "granularities": [
        "monthly"
      ]
    },
    {
      "baseField": "EER",
      "longName": "Energy Expectations Ratio",
      "source": "Modeled",
      "unit": "",
      "aggregations": [
        {
          "shortName": "EER_avg",
          "aggregation": "avg"
        }
      ],
      "granularities": [
        "monthly"
      ]
    },
    {
      "baseField": "GEER",
      "longName": "GHI-adjusted Energy Expectations Ratio",
      "source": "Modeled",
      "unit": "",
      "aggregations": [
        {
          "shortName": "GEER_avg",
          "aggregation": "avg"
        }
      ],
      "granularities": [
        "monthly"
      ]
    }
  ]
}
```

This endpoint retrieves a list of available data types when doing a bulk data request.

### Definition

`GET /v3/partners/{partnerId}/sites/dataavailable`

### Arguments

Argument | Description | Required? | Default
--- | --- | --- | ---
partnerId | Unique identifier for the partner | yes |

### Returns

Returns an array of [base field objects](#base-field-object).