Feature: Admin edits product

  As an admin 
  In order to update a product 
  I want to update the listing for that product

  Background:
    Given the following admin_user:
      | email    | admin@example.com |  
      | password | password          |  
    Given the following product:
      | title       | Old Chairs             |  
      | description | These chairs are good! |  
      | price       | 3999                   |  

  Scenario: Happy path
    Given I am signed in as that admin
    When I go to the admin dashboard page
    When I press "Products"
    Then I should see "Chairs"
    When I click "Edit"
    Then I should see "Title"
    And I should see "Description"
    When I fill in "New Chairs" for "Title"
    And I fill in "These chairs are excellent!" for "Description"
    And I fill in "4999" for "Price cents"
    And I press "Update Product"
    Then I should see "Product was successfully updated."
    When I go to the admin products page
    Then I should see "New Chairs"
    And I should not see "Old Chairs"
    And I should see "These chairs are excellent"
    And I should not see "These chairs are good!"
    And I should see "49.99"
    And I should not see "39.99"
    When I click "View"
    Then I should see "New Chairs"
    And I should not see "Old Chairs"
    And I should see "These chairs are excellent"
    And I should not see "These chairs are good!"
    And I should see "49.99"
    And I should not see "39.99"