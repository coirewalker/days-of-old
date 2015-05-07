class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  end

  def show
  	@user = User.find(params[:id])
  end

  def edit
  end
  def destroy
  	@user = User.find(params[:id])
  	@user.destroy
  	flash[:alert] = "User has been deleted"
  	redirect to users_path
  	
  end
end
