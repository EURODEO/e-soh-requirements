# Business requirements

## B01 - E-SOH to be a flexible pathway to exposing more near real-time observations

As a EUMETNET Member,

I want E-SOH to be flexible and be a pathway to exposing more near real-time
observations,

So, I can deliver a consistent solution and reduce development activity.

### Priority: secondary

### Clarifications

The expectation is for E-SOH to be focused on land and marine surface observations including rain-gauges. It is envisaged that meeting this requirement for other surface observation networks (e.g., radar) will be met through other EUMETNET initiatives.

* Documentation and education for members and other user groups are required to provide such pathway
  * Agreed. For RODEO, we only need to deliver the sub-hourly observations from Members' Automatic Weather Stations

### Acceptance criteria

### Consequences and decisions

Documentation and education for members and other user groups are required to provide such pathway.

## B02 - adoption of a "build and share" approach to software development

As a EUMETNET Member,

I want the adoption of a "build and share" approach to software development,

So, Members can efficiently and consistently develop national capability related to E-SOH and beyond.

### Priority: primary

### Clarifications

* The project description says that all software should be open-source.

### Acceptance criteria

Software is licensed with an open license, such as MIT, apache 2.0, or GNU GPL version 2.

### Consequences and decisions

We will use Apache 2.0 as default.

## B03 - homogeneous data interoperability between EUMETNET Members and the wider community

As a EUMETNET Member,

I want the exchange of data, and data interoperability between EUMETNET Members and the wider community to be as homogenous as possible,

So, I can meet part of my “Observations and Prediction Data” and “Science Technology and Infrastructure” Vision within the European NMHSs 2021-25 Strategy.

### Priority: primary

### Clarifications

* It needs to be clarified what kinds of observations there will be in E-SOH, do we need separate means of exchange for 3rd party data etc. (i.e., data from stations not registered in WIGOS)?
  * From the reqs (U03, U05, U06, ), it is clear that E-SOH should support distribution of non-WIGOS observations, and it should try to "normalize" those data so they can be consumed in a similar way as the WIGOS observations (e.g., by requiring transformations before sending to e-soh, or by doing the transformation in e-soh). We need to figure out in the design process how to do that, and which types of "other" observations we should support.
  * We need to define use and discovery metadata that supports interoperability. Some station metadata (following a controlled vocabulary) should be required but we cannot require a WIGOS ID.
  * Ignore restricted data in the beginning (i.e., data without a standard open license or release statement)

### Acceptance criteria

### Consequences and decisions

## B04 - sustainable service

As a EUMETNET Member,

I want E-SOH to be a sustainable service that considers the whole lifecycle of a system from design, development, operations to retirement,

So, I understand the total cost of ownership of the E-SOH service.

### Priority: primary

### Clarifications

It is understood that estimating the full operational costs, at the tender stage, is extremely difficult. Therefore, as well as an initial estimate during the tender phase, there is a requirement for a more accurate estimate to be produced during the initial operational phase (WP3). The fully costed estimate of the operational costs should include, for example, system life-cycling cost and reacting to emerging user needs.

* Is this just sustainable in the meaning of operating cost, not in the meaning of green computing etc?
  * There is a general requirement for all EUMETNET Programmes to "ensure that the environmental footprint of the Programme is minimised where possible." So, this should be considered also in the meaning of green computing.

### Acceptance criteria

### Consequences and decisions

## B05 - continuity of service

As a EUMETNET Member,

I want continuity of service in the event of the Service Provider changing,

So, I have a sustainable service delivering my obligations.

### Priority: primary

### Clarifications

There is an expectation that the tender will outline how the E-SOH service will be maintained in the event of a Service Provider not wishing to extend a support contract period or wishes to terminate the operational support contract after an agreed notice period.

### Acceptance criteria

### Consequences and decisions

## B06 - existing Members’ capability considered for incorporation within E-SOH

As a EUMETNET Member,

I want, wherever possible, existing Members’ (including ECMWF, EUMETSAT) capability (e.g., EWC) considered for incorporation within E-SOH,

So, previous investment is exploited to its full potential.

### Priority: secondary

### Clarifications

### Acceptance criteria

### Consequences and decisions

## B07 - make observations available

As a data owner of public sector information,

I want to make my observations available,

So, I can meet my legal requirements, e.g., European Union Open Data Directive (HVD) obligations.

### Priority: primary

### Clarifications

### Acceptance criteria

### Consequences and decisions

## B08 - FAIR principles

As a data owner,

I want my data exposed following FAIR principles,

So, I can meet my legal and user requirements.

### Priority: primary

### Clarifications

* Can FAIR, HVD and WIS2 requirements be contradictory?
  * The requirements are not contradictory, but strict follow-up of the FAIR principles requires at least unique persistent id's on the dataset level (see definition elsewhere). Keeping metadata for indefinite time may be too challenging, since observation datasets are small and only live in E-SOH for 24 hours.

### Acceptance criteria

### Consequences and decisions

## B09 - data exposed in a way that’s consistent with data exchange initiatives within EUMETNET, WMO and the wider data community

As a data owner,

I want my data exposed in a way that’s consistent with data exchange initiatives within EUMETNET, WMO and the wider data community. For example, WIS 2.0, INSPIRE, HVD, and FDCM.

So, I can meet my international commitments and obligations within the Meteorological and wider user community.

### Priority: primary

### Clarifications

### Acceptance criteria

### Consequences and decisions

## B10 - secure mechanism to share data according to data policy

As a data owner,

I want a secure mechanism to share data according to my data policy,

So, I can use E-SOH to expose my data.

### Priority: primary

### Clarifications

### Acceptance criteria

### Consequences and decisions

## B11 - observation station metadata

As a data owner,

I want observations station metadata to be efficiently held and maintained within E-SOH; synchronised with national and international metadata stores (e.g., WMO OSCAR); respecting the metadata agreed Single Source of Truth.

So, I am assured my data are represented correctly to E-SOH users and costs of metadata maintenance are minimised.

### Priority: primary

### Clarifications

### Acceptance criteria

### Consequences and decisions

## B12 - minimise the required changes in production systems

As a data producer,

I want to minimise the required changes in my systems prior to making data available to E-SOH,

So, the value of E-SOH, over developing bespoke capability, is realised.

### Priority: secondary

### Clarifications

### Acceptance criteria

### Consequences and decisions

We need to establish principles for when E-SOH requirements on, e.g., input data formats or interfaces can be changed to meet producer needs.

## B13 - unified approach to the supply of supplementary observations

As a data producer,

I want a unified approach to the supply of supplementary observations developed and supported,

So, I can remove the need to develop bespoke solutions and the need to establish multiple bilateral agreements.

### Priority: secondary

### Clarifications

### Acceptance criteria

### Consequences and decisions

## B14 - near real-time access to sub-hourly observations delivered in the same format and exchange protocols as used today

As a current data consumer of land surface observations,

I want near real-time access to sub-hourly observations delivered in the same format and exchange protocols as used today (i.e., BUFR/GTS),

So, I can minimise development of my systems downstream of E-SOH.

### Priority: secondary

### Clarifications

### Acceptance criteria

### Consequences and decisions

## B15 - E-SOH to handle transmission on GTS

As a data producer,

I want to rely on E-SOH to handle the transmission of new, late or subsequently corrected observations on GTS,

so I can replace my old systems for message generation.

### Priority: secondary

### Clarifications

* The shared infrastructure of WIS2.0 will most likely be able to support this

### Acceptance criteria

### Consequences and decisions
