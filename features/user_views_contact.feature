Feature: User Views Contact
  In order to contact the company
  As a potential or existing client
  I want to view the contact page

  Background:
    When I go to the home page
    And I click on "Contact"

  Scenario: Happy Path
    When I fill in "Steve" for "Name"
    And I fill in "steve@example.com" for "Email"
    And I fill in "Howdy!" for "Message"
    And I press "Send"
    Then I should see "Thank you for contacting me. I will be in touch."

  Scenario: Blank Name
    And I fill in "steve@example.com" for "Email"
    And I fill in "Howdy!" for "Message"
    And I press "Send"
    Then I should see "Name can't be blank!"

  Scenario: Invalid Email
    And I fill in "Steve" for "Name"
    And I fill in "nonsense" for "Email"
    And I fill in "Howdy!" for "Message"
    And I press "Send"
    Then I should see "Email is invalid!"

  Scenario: Blank Name and Invalid Email
    And I press "Send"
    Then I should see "Name can't be blank and email is invalid!"