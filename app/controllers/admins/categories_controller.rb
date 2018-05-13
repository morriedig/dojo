class Admins::CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end
  
  def create
    @category = Category.new(category_params)
    @category.save
  end

  def update
    @category = Category.find([params[:id]])
    @category.update(category_params)
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
  end


  private

  def category_params
    params.require(:category).permit(:title)
  end
end