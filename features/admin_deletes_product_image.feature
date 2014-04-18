Feature: Admin deletes product image
  As an admin
  In order to render a product image obsolete
  I want to delete that product image

  Background:
    Given the following admin_user:
      | email    | admin@example.com |
      | password | password          |
    Given the following product:
      | title       | Chairs                              |
      | description | You will go crazy for these chairs! |
      | price       | 5999                                |
      | image       | test1.png                           |

  Scenario: Happy path
    Given I am signed in as that admin
    When I go to the admin dashboard page
    And I press "Products"
    Then I should see "Chairs"
    When I click "Edit"
    Then I should see "Chairs"
    And I should see "You will go crazy for these chairs!"
    When I attach "test1.png" to "product[image]"
    And I press "Update Product"
    Then I should see "Product was successfully updated."
    When I press "Edit Product"
    Then I should see the image "test1"
    When I check "Remove Image"
    And I press "Update Product"
    Then I should not see the image "test1"
    When I press "Edit Product"
    Then I should not see "Remove Image"
    And I should see the file input "product_image"