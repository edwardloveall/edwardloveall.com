class UsersController < ApplicationController
  
  respond_to :html
  
  def index
    respond_with @users = User.all
  end
  
  def show
    respond_with @user = User.find(params[:id])
  end
  
  def new
   respond_with @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url
      flash[:notice] = "User Created"
    else
      render 'new'
    end
  end
  
end