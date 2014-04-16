Feature: User Views Product
  In order to learn more about a product
  As a potential or existing client
  I want to view the product

  Background:
    Given the following product:
      | title       | Old Chairs             |  
      | description | These chairs are good! |  
      | price       | 39.99                  |  
      | image       | test1.png              |  
    When I go to the home page
    And I click on "Products"

    Scenario: Happy Path
      Then I should be on the products page
      And I should find the image "test1"
      And I should not see "These chairs are good!"
      When I click "Old Chairs medium"
      Then I should see "Old Chairs"
      And I should find the image "test1"
      And I should see "39.99"
      And I should see "These chairs are good!"
