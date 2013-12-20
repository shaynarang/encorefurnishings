When(/^I click on "(.*?)"$/) do |link|
  click_link link
end

Then(/^I should see "(.*?)"$/) do |content|
  page.should have_content content
end

Then /^I should not see "([^"]*)"$/ do |content|
  page.should have_no_content(content)
end

Given /^I fill in "([^"]*)" for "([^"]*)"$/ do |value, field|
  fill_in(field, with: value)
end

When /^I (?:click|press) "([^"]*)"$/ do |selector|
  click_link_or_button(selector)
end