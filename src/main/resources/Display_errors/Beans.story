Beans

Narrative:
As a coffee lover
I have to put fresh beans from time to time
So I can have coffee when I need it

Lifecycle:
Before:
Scope: SCENARIO
Given actionwords are initialized
Given the coffee machine is started
And I handle everything except the beans


Scenario: Message "Fill beans" is displayed after 38 coffees are taken
Meta:
@priority-high
When I take "38" coffees
Then message "Fill beans" should be displayed
Scenario: It is possible to take 40 coffees before there is really no more beans
Meta:
@priority-low
When I take "40" coffees
Then coffee should be served
When I take a coffee
Then coffee should not be served
And message "Fill beans" should be displayed
Scenario: After adding beans, the message "Fill beans" disappears
Meta:
@priority-high
When I take "40" coffees
And I fill the beans tank
Then message "Ready" should be displayed

