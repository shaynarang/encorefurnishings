@wip
Feature: User signs in with Facebook
  In order to have a personalized experience
  As a member of Facebook
  I want to log in with Facebook

  Background:
    When I go to the home page
    And I click "Sign in with Facebook"

    @facebook_auth
    Scenario: Happy Path
      Then I should see "Welcome Test User!"
      And I should see "Sign out"

    @facebook_auth_fail
    Scenario: Invalid credentials
      Then I should see "Could not authenticate you from Facebook. Please try again."
      And I should see "Sign in with Facebook"