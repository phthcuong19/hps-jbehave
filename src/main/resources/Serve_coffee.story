@sprint-1 @JIRA-CMM-1
Serve coffee

Narrative:
As a coffee lover
I can get coffee from the machine
So I can enjoy the rest of the day

Lifecycle:
Before:
Scope: SCENARIO
Given actionwords are initialized


Scenario: Simple use
Meta:
@priority-0
# Well, sometimes, you just get a coffee.
Given the coffee machine is started
When I take a coffee
Then coffee should be served


