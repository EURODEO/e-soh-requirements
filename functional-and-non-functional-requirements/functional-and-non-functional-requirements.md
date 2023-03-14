# Functional and non-functional requirements

## F01 - operational service

As an E-SOH data consumer,

I want E-SOH to be an operational service,

So I can build my operational services based on E-SOH data.

### Clarifications

### Acceptance criteria

### Consequences and decisions

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

## F33 - security to be considered as a high priority

As a System Manager,

I want security to be considered as a high priority and all aspects of the system to meet IT security best practice and includes, for example, identity and access management, role- based access controls, access tokens and data encryption at rest and in transit,

So I can deliver a robust and secure system.

### Clarification

#### Access control

Broken access control is top top issue in the [OWASP Top 10 list of the most critical security risks facing organizations](https://owasp.org/Top10/A01_2021-Broken_Access_Control/).

It seems there is a need three separate systems for authentication and authorization:

##### Data ingestion

There must be control of who is allowed to upload data to the system. Also, there may be several systems for uploading data. Sftp may be one of them, while others may depend on http post requests. This means that each system for ingesting data may need its own mechanisms for authentication, and possibly also authorization. If possible, it would be useful to have a common "source of truth" regarding authorization, regardless of authentication mechanism.

##### Monitoring

Access to statistics about the system should not be freely available to anyone. Some system must be set up to allow relevant users to access this system.

##### Data delivery

In the first version of e-soh, there will be no restricted data, so from that perspective there is no need for authentication or authorization.

If, at a later stage, we will introduce access control here, there seems to be some limitations in FEMDI regarding this: The use of a message queue with set topics implies that anyone will be able to know about the *existence* of restricted data. We can only provide access control on the actual data itself. *This may or may not be acceptable at a later stage.*

Even if we want to only serve freely available data, we may still want to have some kind of access control here, to have some protection against servers becoming overloaded.

#### Data encryption

All traffic to and from the system will use encryption. No usage of http, only https. The same applies to ftp - we will only provides sftp.

Data encryption at rest must be supported, as by the requirements.

### Acceptance criteria

### Consequences and decisions
