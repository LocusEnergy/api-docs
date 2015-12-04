## Rate limiting

Requests are rate limited by default at 2 requests/second. A rate limited request will return an HTTP 429 error in the format shown on the right.

```json
{
	"message": "Too many requests",
	"statusCode": 429
}
```