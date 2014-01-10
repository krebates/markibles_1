class CategoriesController < ApplicationController

  ## get the current_user
  ## check in the edit action that the store id is
  ## the same as the current_users store id
  ## if it is they can edit

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
        redirect_to '/categories'
      else
        render :new
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def destroy
    @category = Category.find_by_id(params[:id])
      if @category.destroy
        redirect_to categories_path
      end
  end

  def update
    @category = Category.find(params[:id])
    @category.update_attributes!(category_params)
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
