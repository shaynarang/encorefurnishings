class Product < ActiveRecord::Base

	monetize :price_cents, :allow_nil => true
	
end
