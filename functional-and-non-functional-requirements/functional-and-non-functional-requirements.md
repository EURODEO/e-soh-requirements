# Functional and non-functional requirements

## F01 - operational service

As an E-SOH data consumer,

I want E-SOH to be an operational service,

So I can build my operational services based on E-SOH data.

### Priority: primary

### Clarifications

* What is the meaning of "operational service"?
  * E-SOH will be a fully operational service, providing core capability on behalf of EUMETNET Members. Requirements F02 to F06 describe the Service levels required. 

### Acceptance criteria

### Consequences and decisions

## F02 - 24/7 availability

As a E-SOH data consumer,

I want the service to be available 24/7 with minimal agreed downtime and maintenance slots,

So I can deliver the level of service required by my users.

### Priority: primary

### Clarifications

There is an expectation for data to be consistently available 24/7, although a minimum of downtime (<1%) is acceptable with no break in service > 24hours. There is also an expectation that to deliver this level of service a “service desk” capability will be required so incidents can be managed.

### Acceptance criteria

### Consequences and decisions

## F03 - delivery within 1 minute

As an E-SOH sub-hourly observations data consumer,

I want observations to be available within 1 minute of data producer publishing their data,

So I can deliver the level of service required by my users.

### Priority: primary

### Clarifications

### Acceptance criteria

### Consequences and decisions

## F04 - file delivered within a minute of the youngest observation within the file

As a E-SOH sub-hourly observations data consumer, when receiving batched observations within a file,

I want the file delivered within a minute of the youngest observation within the file,

So I can deliver the level of service required by my users.

### Priority: primary

### Clarifications

### Acceptance criteria

### Consequences and decisions

## F05 - data producers to make the data they create available with minimum delay

As the E-SOH system manager,

I want data producers to make the data they create available with minimum delay,

So I can deliver the level of service required by my users.

### Priority: primary

### Clarifications

### Acceptance criteria

### Consequences and decisions

## F06 - agreed delivery data format and protocol

As the E-SOH system manager,

I want data producers to make the data they create available in an agreed data format and following an agreed delivery protocol,

So I can deliver the level of service required by my users.

### Priority: primary

### Clarifications

* Does this refer to E-SOH ingestion service, or E-SOH API?
  * It's the ingestion. From the ITT: "As well as requirements for the data provider (i.e., E-SOH) to meet, there are also requirements for the data producers (e.g., Members) ... to deliver the overall E-SOH service. "

### Acceptance criteria

### Consequences and decisions

## F07 - reports of the performance against agreed KPIs

As a EUMETNET Member,

I want monthly, quarterly, and annual reports of the performance, against (to be confirmed) agreed KPIs, of the E-SOH service,

So, I am assured that the level of service is at agreed levels and meeting our users’ requirements. Also, so I have an indication of possible future investment needs.

### Priority: primary

### Clarifications

### Acceptance criteria

### Consequences and decisions

## F08 - data application providers to only provide supported operating systems, libraries, and software

As the E-SOH system manager,

I want data application providers to only provide supported operating systems, libraries, and software,

So I can minimise the costs of managing the lifecycle of E-SOH.

### Priority: primary

### Clarifications

The spirit of this requirement was to avoid any "exotic" or developer favourites being used. The requirement should be covered by the quality assurance process.

### Acceptance criteria

### Consequences and decisions

## F09 - access to real-time observations up to 24 hours after the observations data time

As a data consumer,

I want access to real-time observations, up to 24 hours after the observations data time,

So I can retrieve data I might have missed due to, for example, local technical incidents.

### Priority: primary

### Clarifications

Data consumers might choose to archive data themselves. This is common amongst Members as it, for example, allows Members to run re-analysis trials based on the data reception, rather than validity, time.

### Acceptance criteria

### Consequences and decisions

## F10 - access to the first iteration as well as corrected observations data

As a data consumer of file-based E-SOH products,

I want access to the first iteration of the observations data, as well as to late or subsequently corrected observations,

So I am able to handle all data.

### Priority: secondary

### Clarifications

### Acceptance criteria

### Consequences and decisions

## F11 - E-SOH as data provider role within FEMDI when data is exposed by producer via a pull API service

Given a data producer exposes data via a pull API service,

When new data are published by the data producer,

Then E-SOH must perform its data provider role within FEMDI.

### Priority: primary

### Clarifications

### Acceptance criteria

### Consequences and decisions

## F13 - initially collect data before making it available to E-SOH

Given a data producer operates or is responsible for multiple (>1) instruments,

When those instruments make an observation,

Then the data producer initially collects the data before making them available to E-SOH.

### Priority: primary

### Clarifications

* This requirement is here to highlight that the responsibility for the observation networks and initial collection of observations is with the members, and not the E-SOH project. From the ITT:

> "**E-SOH is not expected to receive data directly from instruments**. For the initial, sub-hourly surface observations, version of E-SOH there will be approximately 31 data producers. There will be a similar order of data producers for rain-gauges. For PWS observations, although the number of ‘stations’ will be an order of magnitude greater than those operated by Members, there will be a small number of data producers (<10)."

* So need to send multiple instruments for a station together, but stations can be sent separately?
  * The requirement does not mention stations
  * The collection of data from instruments is the responsibility of the Member operating the obs network

* Given that the expected workflow for data producers is
  1) collect observations from station
  2) quality control/post-process(?)
  3) send to e-soh
  * it seems that we should support observations from each instrument on each station to be sent separately to e-soh.

### Acceptance criteria

### Consequences and decisions

## F22 - convert data values and units to the expected E-SOH output

Given a data producer exposes observations data,

When those observations data are expressed in units not matching the expected E-SOH output,

Then E-SOH should convert the data values to match those required by E-SOH data consumers.

### Priority: primary

### Clarifications

* Do we store the values in the original units, or in the expected E-SOH units?
  * Expect users to provide values in SI units but if users provide non-SI units, we need to define where to do the conversion.

### Acceptance criteria

### Consequences and decisions

## F24 - access to sub-hourly observations delivered in an Open Standard format (e.g., GeoJSON)

As a data consumer of land surface observations,

I want near real-time access to sub-hourly observations delivered in an Open Standard format (e.g., GeoJSON, CoverageJSON) following agreed and structured naming convention standards (e.g., CF and ACDD),

So, I can minimize the development of new applications and reduce the need to learn domain specific formats.

### Priority: primary

### Clarifications

* At the time of gathering requirements, GeoJSON was suggested - the consensus is now moving to CoverageJSON

### Acceptance criteria

### Consequences and decisions

## F29 - query based on location, time, and parameter

As a data consumer using API access,

I want to query the data based on location, time, and parameter,

So I can access exactly the data I require and minimised the amount of data retrieved and local post processing.

### Priority: primary

### Clarifications

### Acceptance criteria

### Consequences and decisions

At this stage we expect to use EDR as the standard for the API so we should use the EDR standards for location and time. To start with, we will focus on simple radius and 2D polygon queries, and not worry about trajectories, etc.  There is still the open question about parameters but for location and time hopefully we can state EDR.

If there is a Z axis, it needs to be defined what kind of support is required:
* Can one query data based on, e.g., pressure levels or height from ground level or sea level?
* How to use the Z axis when data is, e.g., sea temperature profiles or so?

EDR API needs to support that, and the data storage also has to be such that we can store and query the data efficiently. Maybe the simplest form is to support the Z axis that data happens to have and the user needs to know what it is (e.g., based on metadata) and queries are possible only using that axis. Conversions etc are left to user.

* Should be defined whether the location can be in 3D (not just lat/lon) or not
  * Decision: height is specified in parameter name and/or discovery metadata. We do not expect to implement vertical layer query in EDR (we will implement 2d bounding box, not 3d, at least as a start).

