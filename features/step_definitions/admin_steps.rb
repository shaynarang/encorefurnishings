Given /^I am signed in as that admin/ do
  admin = AdminUser.last
  steps %{
    When I go to the admin page
    And I fill in "#{admin.email}" for "Email"
    And I fill in "password" for "Password"
    And I press "Login"
  }
end