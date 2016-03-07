## Rate limiting

Requests are rate limited by default to 1 request at a time. A rate limited request will return an HTTP 429 error in the format shown on the right. If you'd like higher rates of concurrency, please contact your account manager.

```json
{
	"message": "Too many requests",
	"statusCode": 429
}
```
