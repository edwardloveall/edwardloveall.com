class MediaController < ApplicationController
  respond_to :html
  before_filter :authorize
  
  def index
    respond_with @media = Medium.all
  end
    
  def show
    respond_with @medium = Medium.find(params[:id])
  end
    
  def new
    respond_with @medium = Medium.new
  end
    
  def create
    @medium = Medium.new(params[:medium])
    flash[:notice] = "Media created" if @medium.save
    redirect_to media_url
  end
    
  def edit
    respond_with @medium = Medium.find(params[:id])
  end
    
  def update
    @medium = Medium.find(params[:id])
    flash[:notice] = "Media updated" if @medium.update_attributes(params[:medium])
    respond_with @medium
  end
    
  def destroy
    @medium = Medium.find(params[:id])
    flash[:notice] = "Media deleted" if @medium.destroy
    respond_with @medium
  end
end
