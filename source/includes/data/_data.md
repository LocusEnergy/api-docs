# Data

## Overview

Timeseries data calls return interval, rather than accumulated values for the granularity chosen. For example, if you ask for energy from 2013-01-01T00:00:00 to 2014-01-01T00:00:00 at yearly granularity, you would receive the energy measured only during the calendar year of 2013. Timestamps in responses of data calls represent the beginning of that time interval. This is also known as a "leading" timestamp. The interval includes data up until just before the following timestamp in the data response. Using the same yearly example as above, the timestamp for data received would be 2013-01-01T00:00:00 and would include all energy where the timestamp is >= 2013-01-01T00:00:00 and < 2014-01-01T00:00:00.

For all data calls, the time period allowed depends upon the granularity chosen.

* latest: not applicable
* 1min: < 5 days
* 5min: < 7 days
* 15min: < 7 days
* hourly: < 31 days
* daily: < 1 year
* monthly: no limitations
* yearly: no limitations

### Field Parameters

<aside class="warning">Field parameters have been deprecated in favor of explicit PV model configuration via <a href="https://solarnoc.datareadings.com/" target="_blank">LocusNOC</a>. Any field parameters sent as part of a <code>data</code> request will not cause any harm, but will be ignored. For more information, please see the <a href="https://locusenergy.force.com/s/article/PV-Model-Settings" target="_blank">LocusNOC documentation</a>.</aside>

[Field parameters](#field-parameters) describe additional query parameters that need to be provided in a `data` call in order to function properly. For example, in order to make a request for Modeled AC Power, the `data` request must use the field parameters provided in the `dataavailable` response. Based on the field parameters returned, an example data call could be: `GET /data?fields=W_m_avg&start=2015-08-01T00:00:00&end=2015-08-02T00:00:00&tz=US/Pacific&gran=5min&modelType=singleDiode&irradianceSource=TMY&inverterClipping=true`.

Depending upon the entity, available field parameters are explained below. All options for the field parameters are dictated by the results of the `dataavailable` call.

* modelType: there are two possible options for modelType -- singleDiode and simple. The single diode model is a PV model that represents the physics of a PV cell. A detailed explanation can be found [here](https://pvpmc.sandia.gov/modeling-steps/2-dc-module-iv/diode-equivalent-circuit-models/). The simple model is based on PVWatts which is best explained [here](https://pvpmc.sandia.gov/modeling-steps/2-dc-module-iv/point-value-models/pvwatts/).
* irradianceSource: possible irradiance sources include TMY3 and weatherStation. [TMY3 data](http://rredc.nrel.gov/solar/old_data/nsrdb/1991-2005/tmy3/) is taken from the nearest TMY3 station to the geolocated address of the entity being modeled. Weather station data is obtained from a weather station in the site hierarchy in SolarNOC.
* inverterClipping: boolean toggle to determine whether the PV model should clip at the inverter maximum output power.

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
