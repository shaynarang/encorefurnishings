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

Then /^the "([^\"]*)" field should contain "([^\"]*)"$/ do |field, value|
  field_labeled(field).value.should =~ /#{value}/
end

When /^I (?:click|press) "([^"]*)"$/ do |selector|
  click_link_or_button(selector)
end

When(/^I attach "(.*?)" to "(.*?)"$/) do |file, target|
  path = File.join(::Rails.root, 'features', 'support', 'files', file)
  attach_file(target, path)
end

Then(/^I should see the image "(.*?)"$/) do |image|
  page.should have_xpath("//img[contains(@src,'#{image}')]")
end

Then(/^I should find the image "(.*?)"$/) do |image|
  page.find "img[contains(@alt,'#{image}')]"
end

Then(/^I should not see the image "(.*?)"$/) do |image|
  page.should_not have_xpath("//img[contains(@src,'#{image}')]")
end

When(/^I check "(.*?)"$/) do |checkbox|
  check(checkbox)
end

Then(/^I should see the file input "(.*?)"$/) do |field_id|
  page.should have_css("input[type='file'][id='#{field_id}']")
end

Then(/^I should see the section "(.*?)"$/) do |section_class|
  page.should have_selector "div.#{section_class}"
end

Then(/^I should not see the section "(.*?)"$/) do |section_class|
  page.should have_no_selector "div.#{section_class}"
end