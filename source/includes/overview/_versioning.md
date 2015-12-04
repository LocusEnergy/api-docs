## Versioning

The v3 API is globally versioned for all endpoints. With this version, you can trust that we will never *remove* or *change* the existing structure of requests and responses. However, we may *add* new fields and query parameters. In addition, we may change the values that are returned while maintaining the response structure.

Examples of possible changes within a version are shown on the right. 

> **Example 1**<br /><br />
We may add a new field to an existing response. For example, we may add a new field to the [component object](#component-object).<br /><br />
The current object is:

```json
{
  "id": 54369,
  "siteId": 3393714,
  "clientId": 419010,
  "parentId": 3393714,
  "parentType": "SITE",
  "nodeId": "OB.001EC1111DC9.1",
  "name": "PV Meter",
  "nodeType": "METER",
  "application": "GENERATION",
  "generationType": "SOLAR",
  "oem": "Locus Energy",
  "model": "LGate 120",
  "isConceptualNode": false,
  "serialNumber": "ABC123",
  "description": "This is a revenue grade meter"
}
```

> A valid change would be:

```json
{
  "id": 54369,
  "siteId": 3393714,
  "clientId": 419010,
  "parentId": 3393714,
  "parentType": "SITE",
  "nodeId": "OB.001EC1111DC9.1",
  "name": "PV Meter",
  "nodeType": "METER",
  "application": "GENERATION",
  "generationType": "SOLAR",
  "oem": "Locus Energy",
  "model": "LGate 120",
  "isConceptualNode": false,
  "serialNumber": "ABC123",
  "description": "This is a revenue grade meter",
  "exampleNewField": "hello everyone!"
}
```

> **Example 2**<br /><br />
We may change that values that are returned while maintaining the response structure. For example, consider the [dataavailable](#data-available) call.<br /><br />
For a site, a possible response is:

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

> We may add a new data type that is available for this site. The response would then become:

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
            "baseField": "NewBaseField",
            "longName": "I'm a new data type!",
            "source": "Measured",
            "unit": "Wh",
            "aggregations": [
                {
                    "shortName": "NewBaseField_sum",
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