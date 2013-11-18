Feature: User Views About
  In order to learn more about the company
  As a potential purchaser
  I want to view the about page

  Scenario: Happy Path
    When I go to the homepage
    And I click on "About"
    Then I should see "Encore Furnishings is a furniture restoration, painting and staining service in Nashville, TN."