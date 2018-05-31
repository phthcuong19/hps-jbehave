@sprint-2
Can be configured

Narrative:
As this is a high quality product
It is possible to configure it
In order to get the best possible coffees

Lifecycle:
Before:
Scope: SCENARIO
Given actionwords are initialized


Scenario: Display settings
Meta:
@priority-1
Given the coffee machine is started
When I switch to settings mode
Then displayed message is:
  """
  Settings:
   - 1: water hardness
   - 2: grinder
  """
Scenario: Default settings
Meta:
@priority-0
Given the coffee machine is started
When I switch to settings mode
Then settings should be:
  | name | value |
  | water hardness | 2      |
  | grinder        | medium |

