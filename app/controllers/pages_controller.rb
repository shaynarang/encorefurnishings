class PagesController < ApplicationController

  def home
    @products = Product.order("RANDOM()").limit(3)
  end

  def about
    @lindsay_image_url = "https://s3-us-west-2.amazonaws.com/encorefurnishings-assets/uploads/lindsay.jpg"
  end

  def services
  end

  def contact
  end
end