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
    And I press "New Product"
    Then I should see "Title"
    And I should see "Image"
    When I attach "table.png" to "product[image]"
    And I press "Create Product"
    Then I should see "Product was successfully created."
    And I should see the image "table"
    When I press "Edit Product"
    Then I should see the image "thumb_table"
    When I attach "chairs.png" to "product[image]"
    And I press "Update Product"
    Then I should see "Product was successfully updated."
    And I should see the image "chairs"
    And I should not see the image "table"