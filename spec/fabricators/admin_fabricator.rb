Fabricator(:admin_user) do
  email 	{ sequence(:email) { |i| "joe_#{i}@example.com" } }
  password 	"password"
end