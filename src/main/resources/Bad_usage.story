Bad usage

Narrative:
**In order to** have coffee and let other people have to clean after me
**As a** lazy coffee user
**I can** ignore the message displayed by the machine


Lifecycle:
Before:
Scope: SCENARIO
Given actionwords are initialized


Scenario: Full grounds does not block coffee
Meta:
@priority-low
# You keep getting coffee even if the "Empty grounds" message is displayed. That said it's not a fantastic idea, you'll get ground everywhere when you'll decide to empty it.
Given the coffee machine is started
And I handle everything except the grounds
When I take "50" coffees
Then message "Empty grounds" should be displayed
And coffee should be served

