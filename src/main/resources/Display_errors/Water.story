Water

Narrative:
As a coffee lover
I have to handle the water tank
So I can have coffee when I need it

Lifecycle:
Before:
Scope: SCENARIO
Given actionwords are initialized
Given the coffee machine is started
And I handle everything except the water tank


Scenario: Message "Fill water tank" is displayed after 50 coffees are taken
Meta:
@priority-high
When I take "50" coffees
Then message "Fill tank" should be displayed
Scenario: It is possible to take 10 coffees after the message "Fill water tank" is displayed
Meta:
@priority-low
When I take "60" coffees
Then coffee should be served
When I take a coffee
Then coffee should not be served
Scenario: When the water tank is filled, the message disappears
Meta:
@priority-high
When I take "55" coffees
And I fill the water tank
Then message "Ready" should be displayed

