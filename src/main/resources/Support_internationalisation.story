@sprint-3
Support internationalisation

Narrative:
As a polyglot coffee lover
I can select the language on the coffee machine
So I can practice my use of greetings in several languages

Lifecycle:
Before:
Scope: SCENARIO
Given actionwords are initialized


Scenario: No messages are displayed when machine is shut down
Meta:
@priority-1
Given the coffee machine is started
When I shutdown the coffee machine
Then message "" should be displayed
Scenario: Messages are based on language
Meta:
@priority-1
# Well, sometimes, you just get a coffee.
When I start the coffee machine using language "<language>"
Then message "<ready_message>" should be displayed

Examples:
| language | ready_message | hiptest-uid |
| en | Ready |  |
| fr | Pret |  |

