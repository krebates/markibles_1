class ProductsController < ApplicationController

  before_action :authorize_user, only: [:new, :create]

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
    if is_seller?
    @product = Product.new(product_params)
    @product.seller = current_user.seller
      if @product.save
        flash[:notice]= 'You have added a product'
        redirect_to '/products/'
      else
        render :new
      end
    end
  end

  def edit
    @product = Product.find(params[:id])
    if current_user.id == @product.user.id
    end
  end

  def destroy
    @product = Product.find_by_id(params[:id])
    if @product.destroy
      redirect_to products_path
    end
  end

  def update
    @product = Product.find(params[:id])
    @product.update_attributes!(product_params)
    redirect_to products_path
  end

private

  def product_params
    params.require(:product).permit(:name, :food_photo, :description, :category_id, :seller_id, :price)
  end

  def is_seller?
    current_user.id == @seller
  end
end

