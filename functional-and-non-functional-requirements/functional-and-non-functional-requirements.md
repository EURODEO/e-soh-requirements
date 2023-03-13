# Functional and non-functional requirements

## F22 - convert data values and units to the expected E-SOH output

Given a data producer exposes observations data,

When those observations data are expressed in units not matching the expected E-SOH output,

Then E-SOH should convert the data values to match those required by E-SOH data consumers.

### Clarifications

* Do we store the values in the original units, or in the expected E-SOH units?
  * Expect users to provide values in SI units but if users provide non-SI units, we need to define where to do the conversion.

### Acceptance criteria

### Consequences and decisions
