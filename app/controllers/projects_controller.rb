class ProjectsController < ApplicationController
  respond_to :html
  
  def index
    # TODO order scopes to order by project order / category order
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
    redirect_to root_url, notice: "Project created!"
  end
  
  def update
    @project = Project.find(params[:id])
    flash[:notice] = "Project Updated" if @project.update_attributes(params[:project])
    respond_with @project
  end
  
  def destroy
    @project = Project.find(params[:id])
    flash[:notice] = "Project Deleted" if @project.destroy
    respond_with @project
  end
end