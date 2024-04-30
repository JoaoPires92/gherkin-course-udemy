Feature: Fix my Gherkin

Scenario: Challenge 1
Given I am logged in as a customer service agent
* I am on the author record detail page
* The record is in edit mode
* I change the first name field to 'test1'
When I click the Save button
Then The record is updated



