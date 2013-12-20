def path_to(page_name)
  case page_name

  when /the home page/
    "/"
  when /the admin page/
    new_admin_user_session_path
  when /the admin dashboard page/
    admin_dashboard_path
  when /the admin products page/
    admin_products_path
  else
    raise "Unable to find #{page_name}"
  end
end

When /^I (?:go to|am on) (.*?)$/  do |page_name|
  new_path = path_to(page_name)
  unless current_path == new_path
    visit new_path
  end
end

Then /^(?:|I |they )should be on (.+)$/ do |page_name|
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path.should == path_to(page_name)
  else
    assert_equal path_to(page_name), current_path
  end
end