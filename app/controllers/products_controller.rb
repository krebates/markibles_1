class ProductsController < ApplicationController

  # before_action :authorize_user, only: [:new, :create]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product, notice: 'Successfully added product.'
    else
      render :new
    end
  end

private

  def product_params
    params.require(:product).permit(:name, :photo, :description, :seller_id, :price)
  end
end

