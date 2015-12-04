# Data

## Overview

Timeseries data calls return interval, rather than accumulated values for the granularity chosen. For example, if you ask for energy from 2013-01-01T00:00:00 to 2014-01-01T00:00:00 at yearly granularity, you would receive the energy measured only during the calendar year of 2013. Timestamps in responses of data calls represent the beginning of that time interval. This is also known as a "leading" timestamp. The interval includes data up until just before the following timestamp in the data response. Using the same yearly example as above, the timestamp for data received would be 2013-01-01T00:00:00 and would include all energy where the timestamp is >= 2013-01-01T00:00:00 and < 2014-01-01T00:00:00.

For all data calls, the time period allowed depends upon the granularity chosen.

* 5min: < 7 days
* 15min: < 7 days
* hourly: < 31 days
* daily: < 1 year
* monthly: no limitations
* yearly: no limitations

### Field Parameters

[Field parameters](#field-parameters) describe additional query parameters that need to be provided in a `data` call in order to function properly. For example, in order to make a request for Modeled AC Power, the `data` request must use the field parameters provided in the `dataavailable` response. Based on the field parameters returned, an example data call could be: `GET /data?fields=W_m_avg&start=2015-08-01T00:00:00&end=2015-08-02T00:00:00&tz=US/Pacific&gran=5min&modelType=singleDiode&irradianceSource=TMY&inverterClipping=true`.

## Data object

```json
{
  "id": 123,
  "ts": "2014-04-01T12:00:00-07:00",
  "W_avg": 23.717,
  "Wh_sum": 5936
}
```

### Attributes

Attribute | Type| Description | Always returned?
---|---|---|---
id | Integer | Corresponds to the entity ID for which this data was requested | yes
ts | String (YYYY-MM-DDThh:mm:ssZ) | Datetimestamp for this data point | yes

For each `data` object, any non-null data is returned with the field name. In this example, `W_avg` and `Wh_sum` were requested.