Given(/^I have products titled "(.*?)", "(.*?)"$/) do |product_one, product_two|
  Product.create!(title: "Table", description: "Table description")
  Product.create!(title: "Chairs", description: "Chairs description")
end