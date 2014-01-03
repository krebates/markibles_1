class ProductsController < ApplicationController

  def index
    @products = Product.all
  end


private

  def product_params
    params.require(:product).permit(:name, :photo, :description, :seller_id, :price)
  end
end

