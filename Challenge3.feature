Feature: Fix my Gherkin

Background:
Given a boat insurance application has the following properties
| Property Name     |
| Make              |
| Model             |
| Manufactured Date |
| Hull Length       |


Scenario: Viewing properties for Dinghy
When I view the insurance properties for 'Dinghy'
Then I should see the common properties for a boat



Scenario: Viewing properties for Yacht
When I view the insurance properties for 'Yacht'
Then I should see the common properties for a boat
And I should see specific properties as follows
| Property Name |
| Hull Length   |
| Berths        |



Scenario: Viewing properties for Cruiser
When I view the insurance properties for 'Cruiser'
Then I should see the common properties for a boat
And I should see specific properties as follows
| Property Name |
| Hull Length   |
| Engine Size   |
| Fuel Type     |
| Berths        |




