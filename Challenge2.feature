Feature: Fix my Gherkin


Scenario: Challenge 2
Given I have an "author" record
And the field <field> has a value of <value>
| field     | value |
| firstname | bob   |
| surname   | jones |
| active    | true  | 
When I click the Save button
Then The record is updated

