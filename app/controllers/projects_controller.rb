class ProjectsController < ApplicationController
  respond_to :html, :json, :rss
  
  def index
    respond_with @projects = Project.order("created_at DESC")
  end
  
  def new
    @project = Project.new
    respond_with @project
  end
  
  def show
    respond_with @project = Project.find(params[:id])
  end
  
  def edit
    respond_with @project = Project.find(params[:id])
  end
  
  def create
    @project = Project.new(params[:project])
    flash[:notice] = "Project Saved" if @project.save
    respond_with @project
  end
  
  def update
    @project = Project.find(params[:id])
    flash[:notice] = "Project Updated" if @project.update_attributes(params[:project])
    respond_with @project
  end
  
  def destroy
    
  end
end