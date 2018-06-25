@sprint-2
Can be configured

Narrative:
**In order to** get the best possible coffees
**As a** geeky coffee lover
**I can** configure it to match my needs


Lifecycle:
Before:
Scope: SCENARIO
Given actionwords are initialized


Scenario: Display settings
Meta:
@priority-medium
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
@priority-high
Given the coffee machine is started
When I switch to settings mode
Then settings should be:
  | name | value |
  | water hardness | 2      |
  | grinder        | medium |

