class PagesController < ApplicationController
  respond_to :html
  
  def index
    respond_with @pages = Page.order("sequence")
  end
  
  def show
    respond_with @page = Page.find(params[:id])
  end
  
  def new
    @page = Page.new
    respond_with @page
  end
  
  def create
    @page = Page.new(params[:page])
    flash[:notice] = "Page Saved" if @page.save
    respond_with @page
  end
  
  def update
    @page = Page.find(params[:id])
    flash[:notice] = "Page Updated" if @page.update_attributes(params[:page])
    respond_with @page
  end
  
  def destroy
    @page = Page.find(params[:id])
    flash[:notice] = "Page Deleted" if @page.destroy
    respond_with @page
  end
end
