@sprint-1
Serve coffee

Narrative:
**In order to** enjoy the rest of the day
**As a** coffee lover
**I can** get coffee from the machine


Lifecycle:
Before:
Scope: SCENARIO
Given actionwords are initialized


Scenario: Simple use
Meta:
@priority-high
# Well, sometimes, you just get a coffee.
Given the coffee machine is started
When I take a coffee
Then coffee should be served

