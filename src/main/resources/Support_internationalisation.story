@sprint-3
Support internationalisation

Narrative:
**In order to** practice my use of greetings in several languages
**As a** polyglot coffee lover
**I can** select the language on the coffee machine


Lifecycle:
Before:
Scope: SCENARIO
Given actionwords are initialized


Scenario: Messages are based on language
Meta:
@priority-medium
When I start the coffee machine using language "<language>"
Then message "<ready_message>" should be displayed

Examples:
| language | ready_message | hiptest-uid |
| fr | Pret |  |
| en | Ready |  |
| vi | Dang chay |  |
Scenario: No messages are displayed when machine is shut down
Meta:
@priority-medium
Given the coffee machine is started
When I shutdown the coffee machine
Then message "" should be displayed

