Feature: User Views Product
  In order to learn more about a product
  As a potential or existing client
  I want to view the product

  Background:
    Given the following products:
      | title  | description            | price | image      | sold  |
      | Table  | This table is good!    | 39.99 | table.png  | false |
      | Chairs | These chairs are good! | 49.99 | chairs.png | true  |
    When I go to the home page
    And I click on "Products"
    Then I should be on the products page

    Scenario: Available Product
      Then I should not see "This table is good!"
      When I click "Table medium"
      Then I should see "Table"
      And I should find the image "Table medium"
      And I should see "39.99"
      And I should see "This table is good!"

    Scenario: Sold Product
      Then I should not see "These chairs are good!"
      When I click "Chairs medium"
      Then I should see "Chairs"
      And I should find the image "Chairs medium"
      And I should not see "49.99"
      And I should see "These chairs are good!"
      And I should see "SOLD!"