Feature: Admin creates product

  As an admin 
  In order to sell a product 
  I want to create a listing for that product

  Background:
    Given the following admin_user:
      | email    | admin@example.com |
      | password | password       |
 
  Scenario: Happy path
    Given I am signed in as that admin
    When I go to the admin dashboard page
    And I should see "Dashboard"
    When I press "Products"
    Then I should see "Products"
    And I should see "Title"
    And I should see "Description"
    And I should see "Price"
    When I press "New Product"
    Then I should see "Title"
    And I should see "Description"
    And I should see "Price cents"
    And I should see "Price currency"
    When I fill in "Table" for "Title"
    And I fill in "You will go crazy for this table!" for "Description"
    And I fill in "5999" for "Price cents"
    And I press "Create Product"
    Then I should see "Product was successfully created."
    When I go to the admin products page
    Then I should see "Table"
    And I should see "You will go crazy for this table!"
    And I should see "59.99"
