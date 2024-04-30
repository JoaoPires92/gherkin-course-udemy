Feature: Shooping Basket
As a...
I want...
So that...
As a customer I want be able to edit the contents of my shooping baskets, so that I can amend my purchase before checking out.

Background: 
Given I have the following data: 
| Product | Stock | Basket |
| 1       | 2     | 0      |
| 2       | 0     | 0      |
| 3       | 2     | 1      |

@MainTest
# This test replaces the 3 individual tests below. As a Scenario Outline we work with data tables and variables
Scenario Outline: Testing funcionality of the shooping basket
Given I am on the product detail page of product <Product>
When I click the add to basket button
Then the stock level is <Stock>
And the basket quantity is <Basket>
And a message <Message> is displayed to the user

Examples:
    | Description       | Product | Stock | Basket | Message               |
    | In Stock          | 1       | 1     | 1      | 'Added to the basket' |
    | Not in Stock      | 2       | 0     | 0      | 'Not in stock'        |
    | Already in Basket | 3       | 3     | 2      | 'Limited to one only' |


@ignore
# ******Replaced by Scenario Outile Test*******
Scenario: As a customer I can add an item to my shooping basket
...
Scenario summury can be added here...
...
Given I am on the product detail page of product "1"
When I click the add to basket button
Then Product "1" has the following quantities:
| Stock | Basket |
| 1     | 1      |
And a message is displayed to the user

@ignore
#******Replaced by Scenario Outile Test*******
# product is not in the stock and not in the basket
Scenario: As a customer I am unable to add an item to my basket if it's not in stock
Given I am on the product detail page of product "2"
When I click the add to basket button
Then Product "2" has the following quantities:
| Stock | Basket |
| 0     | 0      |
And a message is displayed to the user

@ignore
# ******Replaced by Scenario Outile Test*******
# product is in stock and in the basket
Scenario: As a customer I am unable to add an item to my basket if it's already in the basket
Given I am on the product detail page of product "3"
When I click the add to basket button
Then Product "3" has the following quantities:
| Stock | Basket |
| 3     | 2      |
And a message is displayed to the user


@SmokeTest
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


@SmokeTest
Scenario: As a customer I can create a new account
As a customer I can create a new account if I enter my username/password and click the register and I will be sent to the account page
Given the user is on the register page
When the user enters the correct user name
And the user enters the correct password
And the user clicks on the register button
Then the user is registered with success
And the user is redirected to the account page


@SmokeTest
Scenario: As a customer I can remove an Item from my shooping basket
Given I am on the basket page
When I click the remove button
Then The product is removed from the basket


@SmokeTest
Scenario: As a customer I can view the items of my shooping basket
Given I am on the home page 
When I click on the shooping basket icon
Then I see a list of shooping items


@SmokeTest
Scenario:As a customer I can checkout from the shooping basket
Given I am on the basket page 
When I click the checkout button
Then I should be taken to the checkout page