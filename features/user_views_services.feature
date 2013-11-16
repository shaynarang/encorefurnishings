Feature: User Views Services
  In order to learn more about the company
  As a potential purchaser
  I want to view services

  Scenario: Happy Path
    When I go to the homepage
    And I click on "Services"
    Then I should see "Custom painting, staining and restoration of furniture of all kinds. From French Provincial to Mid-Century modern, I can transform and restore your furniture so it is better than new! Choose one of our pieces or bring a piece to be custom painted to your specifications."