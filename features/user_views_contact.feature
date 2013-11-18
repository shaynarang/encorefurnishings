Feature: User Views Contact
  In order to contact the company
  As a potential or existing client
  I want to view the contact page

  Scenario: Happy Path
    When I go to the homepage
    And I click on "Contact"
    Then I should see "For more information, contact me at (615) 988-0189 or encorefurnishingsnashville@gmail.com."