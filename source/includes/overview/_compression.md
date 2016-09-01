## Compression

Responses are compressed if `Accept-Encoding: gzip` is sent as a request header. Compression can significantly reduce the size of the response, saving bandwidth and reducing time spent transmitting the response from the server to the client.

> Example compression request

```http
GET https://api.locusenergy.com/v3/sites/123/alerts?tz=UTC HTTP/1.1
Accept: application/json
Accept-Encoding: gzip
Authorization: Bearer ACCESS_TOKEN
```

```shell
curl https://api.locusenergy.com/v3/sites/123/alerts?tz=UTC
  -X GET
  -H "Accept: application/json"
  -H "Accept-Encoding: gzip"
  -H "Authorization: Bearer ACCESS_TOKEN"
```

> The response will be compressed with gzip encoding. Decompressing the response will yield valid JSON.

```json
{
    "statusCode": 200,
    "alerts": [
        {
            "id": 999,
            "componentId": 456,
            "alertType": "System Disconnect",
            "priority": "High",
            "start": "2015-11-01T12:00:00-00:00",
            "end": "2015-11-22T12:00:00-00:00",
            "updated": "2015-11-22T12:03:00-00:00"
        },
        {
            "id": 78,
            "componentId": 90,
            "alertType": "Device Fault",
            "priority": "Medium",
            "start": "2015-11-01T12:00:00-00:00",
            "end": "2015-11-22T15:00:00-00:00",
            "updated": "2015-11-24T12:05:00-00:00",
            "descriptionShort": "VDC high",
            "descriptionLong": "A voltage higher than 2100 V is present on the DC bus. (Resettable)"
        }
    ]
}
```
