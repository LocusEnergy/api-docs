## Getting lifetime energy for a component

```http
GET https://api.locusenergy.com/v3/components/54369/data?start=2000-01-01T00:00:00&end=2030-01-01T00:00:00&tz=UTC&gran=yearly&fields=Wh_sum HTTP/1.1
Accept: application/json
Authorization: Bearer ACCESS_TOKEN
```

```shell
curl https://api.locusenergy.com/v3/components/54369/data?start=2000-01-01T00:00:00&end=2030-01-01T00:00:00&tz=UTC&gran=yearly&fields=Wh_sum
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
            "ts": "2000-01-01T00:00:00+00:00"
        },
        {
            "id": 54369,
            "ts": "2001-01-01T00:00:00+00:00"
        },
        ...
        {
            "id": 54369,
            "ts": "2014-01-01T00:00:00+00:00",
            "Wh_sum": 1234123.5
        },
        {
            "id": 54369,
            "ts": "2015-01-01T00:00:00+00:00",
            "Wh_sum": 124234.2
        },
        {
            "id": 54369,
            "ts": "2016-01-01T00:00:00+00:00"
        },
        ...
    ]
}
```

Sometimes you'd like to know how much energy a certain meter has produced in its lifetime. That's easy with our data API. First, read through steps 1 and 2 of the [Getting data for a component](#getting-data-for-a-component) workflow.

* **start:** choose a very early start date, one that would be early enough to be before any PV system you are interested in came online. In general, 2000-01-01T00:00:00 is a safe choice unless you have some pretty old PV systems.

* **end:** choose something very far in the future. Let's go with 2030-01-01T00:00:00. If you want to be a bit more clever, you can use the current timestamp of whenever you make the API call.

* **tz:** choose the timezone for which you'd like timestamps to be in. To avoid snubbing anyone, let's go with UTC in this example.

* **gran:** this is an important one. Choose yearly. It will be much faster than any other option because less data will be transferred.

* **fields:** if you are looking for energy, go with Wh_sum. Make sure that Wh_sum is a valid field for this specific component using the dataavailable call.

The resulting call will look something like the example on the right. Note that for demonstration purposes, '...' is used to represent many timestamp blocks without any energy data.