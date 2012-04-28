class ProjectsController < ApplicationController
  layout :blank_layout
  
  respond_to :html, :js
  skip_before_filter :authorize, only: [:index]
  
  def index
    # respond_with @projects = Project.order("created_at DESC")
    @categories = Category.all
    @pages = Page.all
    @sidelist = (@categories + @pages).sort_by { |item| item.sequence }
    respond_with @sidelist
  end
  
  def show
    respond_with @project = Project.find(params[:id])
  end
  
  def new
    @categories = Category.order("sequence")
    respond_with @project = Project.new
  end
  
  def create
    @project = Project.new(params[:project])
    flash[:notice] = "Project Saved" if @project.save
    redirect_to root_url, notice: "Project created"
  end
  
  def edit
    @categories = Category.order("sequence")
    respond_with @project = Project.find(params[:id])
  end
  
  def update
    @project = Project.find(params[:id])
    flash[:notice] = "Project updated" if @project.update_attributes(params[:project])
    respond_with @project
  end
  
  def destroy
    @project = Project.find(params[:id])
    flash[:notice] = "Project deleted" if @project.destroy
    respond_with @project
  end
  
  private
  
  def blank_layout
    params[:action] == 'show' && params[:format] == 'js' ? 'blank' : 'application'
  end
end