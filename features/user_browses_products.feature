Feature: User Browses Products
  As a potential purchaser
  In order to find a product I would like to purchaser
  I want to view the products

  Background:
    Given the following product:
      | title       | Table                             |
      | description | You will go crazy for this table! |
      | price_cents | 5999                              |
      | image       | table.png                         |

  Scenario: Happy Path
    When I go to the home page
    And I click "Products"
    Then I should not see "Table"
    And I should not see "You will go crazy for this table!"
    And I should not see "59.99"
    And I should find the image "table"
