## Errors

Locus Energy uses [conventional HTTP response codes](http://en.wikipedia.org/wiki/List_of_HTTP_status_codes) to indicate success or failure of an API request. In general, codes in the 2xx range indicate success, codes in the 4xx range indicate an error that resulted from the provided information, and codes in the 5xx range indicate an error with Locus Energy's servers.

### Common Errors

**400 Bad Request:** The server cannot or will not process the request due to something that is perceived to be a client error (e.g., malformed request syntax, invalid request message framing, or deceptive request routing).

**401 Unauthorized:** Authentication failed. Check that your authentication credentials are correct.

**403 Forbidden:** The request you are making is valid, but you do not have permission to access the entity requested. Authenticating will make no difference. Double check the entity ID that you are requesting.

**404 Not Found:** The requested resource could not be found but may be available again in the future. Subsequent requests by the client are permissible.

**429 Too Many Requests:** The user has sent too many requests in a given amount of time. See information regarding [rate limiting](#rate-limiting).

**5xx Server Error:** Please contact [our support team](mailto:support@locusenergy.com) with details about the error received.