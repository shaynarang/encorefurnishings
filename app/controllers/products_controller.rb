class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def create
    @product = Product.new(product_params)
  end
 
  def update
    @product = Product.find(params[:id])
    @product.update_attributes!(product_params)
  end
 
  private
    def product_params
      params.require(:product).permit(:title, :description, :price_cents, :price_currency)
    end 

end
