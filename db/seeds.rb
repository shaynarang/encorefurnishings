# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/seed/#{file_name}.jpg"))
end

products = [
	{ id: 1, title: "White Chairs", description: "Classic and full of character, these chairs have a creamy white finish. They are perfect for your living room or porch.", price: 89.99 },
	{ id: 2, title: "Green Telephone Chair", description: "This antique telephone chair has a light pistachio finish. It is sure to be a conversation piece (pun intended).", price: 69.99 },
	{ id: 3, title: "Blue Side Tables", description: "These dainty side tables have a charming Carolina blue finish and are perfect for displaying your favorite ornaments.", price: 49.99 },
	{ id: 4, title: "Green Dresser", description: "This contemporary dresser has a light pistachio finish and is not only aesthetically pleasing but has plenty of drawers for storage", price: 99.99 },
	{ id: 5, title: "Blue Record Console", description: "This record console has a medium indigo finish and room for your record player and records. It even has a side-button that opens the door!", price: 99.99 },
	{ id: 6, title: "Pink Queen Anne Chair", description: "This Queen Anne chair has a shimmery silver finish to compliment the carnation pink fabric.", price: 99.99 },
	{ id: 7, title: "Silver Side Table", description: "This side table has a subtle silver finish, beautiful curves, and detailed handles.", price: 49.99 },
	{ id: 8, title: "Silver Side Table", description: "This side table has a subtle silver finish, beautiful curves, a detailed handle, and space for storage." , price: 49.99 },
	{ id: 9, title: "Black Valet Stand", description: "This handsome black valet stand has gold accents. It is a perfectly restored solid wood piece. It is a perfect gift for a sophisticated gent. It is 47 inches tall and 19 inches wide.", price: 79.99 },
	{ id: 10, title: "Red Table", description: "This desk has an electric crimson finish and is sure to brighten up your household. It is 30 inches wide, 18 inches deep, and 29 inches tall." , price: 174.99 },
	{ id: 11, title: "Gray Table", description: "This table has an ash gray finish with black accents. This versatile piece is 22 inches by 22 inches and stands 22 inches tall." },
	{ id: 12, title: "Pink Cane Chairs", description: "These antique cane chairs have a distressed white finish to compliment the lavendar pink fabric.", price: 199.99 },
	{ id: 13, title: "White Coffee Table", description: "This coffee table has a distressed white finish to compliment the dark mocha wood. It features uniquely beautiful designs on all four sides.", price: 149.99 },
	{ id: 14, title: "Silver Mirror", description: "This mirror is a silver and gold piece with beautiful curves and details.", price: 199.99 },
	{ id: 15, title: "Silver Dresser", description: "This dresser is covered in a beautiful, metallic silver finish. It features a shapely design and detailed handles.", price: 249.99 },
	{ id: 16, title: "Silver Vanity", description: "This vanity features a beautiful, metallic silver finish. Finally, you can look good when you are getting work done!", price: 269.99 },
	{ id: 17, title: "Blue Record Cabinet", description: "This mid-century record cabinet features a deep midnight blue finish with gold accents. It is sure to impress your fellow vinyl record afficionados.", price: 199.99 },
	{ id: 18, title: "Black Dresser", description: "This dresser features a charcoal finish with beautiful silver handles.", price: 179.99 },
	{ id: 19, title: "White Frame", description: "This vintage mint frame features a creamy white finish. It is perfect for displaying your most treasured photographs.", price: 39.99 },
	{ id: 20, title: "Yellow Chairs", description: "These chairs are covered in sunglow yellow and are perfect for brightening up your porch. Pugs not included.", price: 79.99 },
	{ id: 21, title: "Brown Mirror", description: "This mirror features a burnt umber brown finish and beautifully detailed finish. It is sure to impress your guests.", price: 79.99 },
	{ id: 22, title: "Silver Bench", description: "This bench features a striking metallic silver finish. It is a unique feature to add to your home.", price: 99.99 },
	{ id: 23, title: "Purple Cabinet", description: "This china cabinet features a plum purple finish. This sophisticated piece is sure to impress your guests for dinner parties.", price: 219.99 },
	{ id: 24, title: "Brown Table", description: "This singer sewing machine has been transformed into a gorgeous table. The detailed metal fixtures contribute to the uniqueness of the piece.", price: 229.99 },
	{id: 25, title: "Brown Dresser", description: "This vintage dresser presents a deep brown wood with unique details. It is a beautiful and functional piece.", price: 149.99 }
]

Product.delete_all
products.each do |product|
  product_name = product[:title]
  file_name = product_name.downcase.tr(" ", "_")
  product[:image] = seed_image("#{file_name}")
  Product.create(product)
end
