# Data Available

## Base Field object

```json
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
                "simple"
            ]
        },
        {
            "param": "irradianceSource",
            "values": [
                "weatherStation"
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
```

### Attributes

Attribute | Type| Description | Always returned?
---|---|---|---
baseField | String | Unique identifier of this base field | yes
longName | String | Human-readable name of this base field | yes
source | String | Type of data. This can be Measured, Modeled or Expected | yes
unit | String | Unit of this data type | yes
aggregations | Array | Array of [aggregations](#aggregations) | yes
fieldParameters | Array | Array of [field parameters](#field-parameters) | yes
granularities | Array of Strings | Array of granularities allowed | yes

#### Aggregations

Attribute | Type| Description | Always returned?
---|---|---|---
shortName | String | Base field with the aggregation appended. This fully defines the `field` to be used in the data call | yes
aggregation | String | Aggregation for this short name. Options are min, max, avg and sum. | yes

#### Field Parameters

<aside class="warning">Field parameters have been deprecated in favor of explicit PV model configuration via <a href="https://solarnoc.datareadings.com/" target="_blank">LocusNOC</a>. Any field parameters sent as part of a <code>data</code> request will not cause any harm, but will be ignored. For more information, please see the <a href="https://locusenergy.force.com/s/article/PV-Model-Settings" target="_blank">LocusNOC documentation</a>.</aside>

Attribute | Type| Description | Always returned?
---|---|---|---
param | String | Type of parameter | yes
values | Array of Strings | Allowed values for this parameter | yes