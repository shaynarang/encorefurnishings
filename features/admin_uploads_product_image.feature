Feature: Admin uploads product image
  As an admin 
  In order to display a product 
  I want to upload a product image

  Background:
    Given the following admin_user:
      | email    | admin@example.com |
      | password | password          |

  Scenario: Happy path
    Given I am signed in as that admin
    When I go to the admin dashboard page
    And I press "Products"
    And I press "New Product"
    Then I should see "Title"
    And I should see "Description"
    And I should see "Image"
    When I attach "chairs.png" to "product[image]"
    And I press "Create Product"
    Then I should see "Product was successfully created."
    And I should see the image "chairs"