# Clients

## Client object

```json
{
  "id": 123,
  "partnerId": 456,
  "tz": "US/Eastern",
  "firstName": "Test",
  "lastName": "System",
  "email": "test@aol.com"
}
```

### Attributes

Attribute | Type| Description | Always returned?
---|---|---|---
id | Integer | Unique identifier for the client | yes
partnerId | Integer | Identifier for the parent partner | yes
tz | String | Timezone default for the client home user | yes
firstName | String | First name of the client | yes
lastName | String | Last name of the client | yes
email | String | email address of the client | yes