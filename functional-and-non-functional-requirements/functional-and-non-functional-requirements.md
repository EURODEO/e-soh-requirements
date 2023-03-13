# Functional and non-functional requirements

## F06 - agreed delivery data format and protocol

As the E-SOH system manager,

I want data producers to make the data they create available in an agreed data format and following an agreed delivery protocol,

So I can deliver the level of service required by my users.

### Clarifications

* Does this refer to E-SOH ingestion service, or E-SOH API?
  * It's the ingestion. From the ITT: "As well as requirements for the data provider (i.e., E-SOH) to meet, there are also requirements for the data producers (e.g., Members) ... to deliver the overall E-SOH service. "

### Acceptance criteria

### Consequences and decisions

## F13 - initially collect data before making it available to E-SOH

Given a data producer operates or is responsible for multiple (>1) instruments,

When those instruments make an observation,

Then the data producer initially collects the data before making them available to E-SOH.

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

### Clarifications

* Do we store the values in the original units, or in the expected E-SOH units?
  * Expect users to provide values in SI units but if users provide non-SI units, we need to define where to do the conversion.

### Acceptance criteria

### Consequences and decisions
