class UsersController < ApplicationController
  
  respond_to :html
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirecto_to root_url
      flash[:notice] = "User Created"
    else
      render 'new'
    end
  end
  
  def index
    respond_with @users = User.all
  end
  
  def show
    respond_with @user = User.find(params[:id])
  end
end