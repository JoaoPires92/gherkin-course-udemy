Feature: Shooping Basket
As a...
I want...
So that...
As a customer I want be able to edit the contents of my shooping baskets, so that I can amend my purchase before checking out.

Scenario: As a customer I can add an item to my shooping basket
...
Scenario summury can be added here...
...
Given I am on the product detail page
And the product is in stock
And this product is currently not in the basket
When I click the add to basket button
Then the product is added to the basket
And a message is displayed to the user
And the stock level is reduced by one

Scenario: As a user I should be able to login to my account using my credentials
Given the user in on the login page
And the signin button is displayed
When the user enters the correct user name
* the user enters the correct password 
* The login button is pressed
Then The user is authenticated
And The user is redirected to the account page

Given My shooping basket contains
* Product A 
* Product B 
* Product C
When I apply a valid discount code
Then the discount applied

Scenario: As a customer I can create a new account
As a customer I can create a new account if I enter my username/password and click the register and I will be sent to the account page
Given the user is on the register page
When the user enters the correct user name
And the user enters the correct password
And the user clicks on the register button
Then the user is registered with success
And the user is redirected to the account page

# product is not in the stock and not in the basket
Scenario: As a customer I am unable to add an item to my basket if it's not in stock
Given I am on the product detail page
And the product is not in stock
And this product is currently not in the basket
When the product is added to the basket
Then a message is displayed to the user
But the product is not added to the basket
And the stock level is not changed

# product is in stock and in the basket
Scenario: As a customer I am unable to add an item to my basket if it's already in the basket
Given I am on the product detail page
And the product is in stock
And this product is currently in the basket
When the product is added to the basket
Then the product is not added to the basket
And a message is displayed to the user
And the stock level is not changed

Scenario: As a customer I can remove an Item from my shooping basket
Given I am on the basket page
When I click the remove button
Then The product is removed from the basket

Scenario: As a customer I can view the items of my shooping basket
Given I am on the home page 
When I click on the shooping basket icon
Then I see a list of shooping items

Scenario:As a customer I can checkout from the shooping basket
Given I am on the basket page 
When I click the checkout button
Then I should be taken to the checkout page