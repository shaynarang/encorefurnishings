Feature: Admin edits product image

  As an admin 
  In order to update a product image
  I want to edit a product image

  Background:
    Given the following admin_user:
      | email    | admin@example.com |  
      | password | password          |
      
  Scenario: Happy path
    Given I am signed in as that admin
    When I go to the admin dashboard page
    And I press "Products"
    Then I should see "New Product"
    And I press "New Product"
    Then I should see "Title"
    And I should see "Image"
    When I attach "test1.png" to "product[image]"
    And I press "Create Product"
    Then I should see "Product was successfully created."
    And I should see the image "test1"
    When I press "Edit Product"
    Then I should see the image "thumb_test"
    When I attach "test2.png" to "product[image]"
    And I press "Update Product"
    Then I should see "Product was successfully updated."
    And I should see the image "test2"
    And I should not see the image "test1"