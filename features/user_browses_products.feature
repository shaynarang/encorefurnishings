Feature: User Browses Products
  In order to view company products
  As a potential purchaser
  I want to browse products

  Scenario: Happy Path
    When I go to the homepage
    And I click on "Products"
    Then I should see "Products"

  Scenario:
    Given I have products titled "Table", "Chairs"
    When I go to the homepage
    And I click on "Products"
    Then I should see "Products"
    And I should see "Table"
    And I should see "Table description"
    And I should see "Chairs"
    And I should see "Chairs description"