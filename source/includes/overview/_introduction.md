## Introduction

The Locus Energy v3 API can be found at <https://api.locusenergy.com/v3>.

The API provides programmatic access to much of the data found in SolarOS. It deals with a few types objects and associated data:

- **Clients:** a client is a container for sites. It contains information about client name, timezone, and other metadata found in SolarOS. Clients are often also referred to as 'projects.'

- **Sites:** a site primarily provides holds location information, as well as site-level metadata such as size and installer. A client can have multiple sites. A site also has timeseries data associated with it.

- **Components:** a component represents a physical device installed on the site. A site can have multiple child components, and components can have multiple children components. A component also is associated with timeseries data.

Data is returned in [JSON](http://en.wikipedia.org/wiki/JSON).

The source of this documentation is [available publicly on Github](https://github.com/LocusEnergy/api-docs). Feel free to contribute by submitting a pull request or [logging an issue](https://github.com/LocusEnergy/api-docs/issues/new).