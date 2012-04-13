class CategoriesController < ApplicationController
  respond_to :html
  
  def index
    respond_with @categories = Category.order("sequence")
  end
  
  def new
    @category = Category.new
    respond_with @category
  end
  
  # def show
  #   redirect_to action: :index
  # end
  
  def edit
    respond_with @category = Category.find(params[:id])
  end
  
  def create
    @category = Category.new(params[:category])
    flash[:notice] = "Category Saved" if @category.save
    respond_with @category, location: categories_path
  end
  
  def update
    @category = Category.find(params[:id])
    flash[:notice] = "Category Updated" if @category.update_attributes(params[:category])
    respond_with @category, location: categories_path
  end
  
  def destroy
    @category = Category.find(params[:id])
    flash[:notice] = "Category Deleted" if @category.destroy
    respond_with @category
  end
end
