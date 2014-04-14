class PagesController < ApplicationController

  def home
    @products = Product.order("RANDOM()").limit(3)
  end

  def about
  end

  def services
  end

  def contact
  end
end