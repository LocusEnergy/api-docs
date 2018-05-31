## Changelog

### 2018-05-30

- Updated the longnames of basefields `GHI_m`, `GHIh_m`, and `GHIhp_m` to `VI - Irradiance Global Horizontal`,
  `VI - Insolation Global Horizontal`, and `VI - Insolation Global Horizontal (prorated)`.
   They previously did not have `VI - ` in front.

### 2018-03-13

- 5min and 15min granularity data time period limit extended from 7 to 31 days

### 2017-09-11

- Added additional [filter options on `alerts`](#filters), including `alertType` and `status`

### 2017-07-20

- Added documentation to [use Postman](#postman)
- Added `componentName`, `siteId` and `siteName` to the [`alerts`](#alerts) object

### 2017-05-15

- Added the `latest` granularity to Component level Data Available and Data calls

### 2017-04-20

- Added the read-only field `locationTimezone` to [site objects](#sites)

### 2016-11-11

- Added the ability to get data for all sites in one request

### 2016-09-30

- Added `1min` as a valid granularity for `data` requests