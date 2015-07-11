class UsersController < ApplicationController
  
  before_action :set_user, only:[:show, :edit, :update, :destroy]
  
  def index
  	@users = User.all #ref to User model class  
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.create(user_params)
    # flash[:notice] = "New account created"
    redirect_to users_path(@user)
  end

  def show
  
  end

  def edit

  end
  
  def update
    @user.update(user_params) 
    # flash[:notice] = "profile updated"
    redirect_to users_path(@user)  
  end
  
  def destroy
  	@user.destroy
  	# flash[:alert] = "User has been deleted"
  	redirect to users_path	
  end

  private

    def set_user
      @user = User.find(params[:id])
    end
    
    def user_params
      params.require(:user).permit(:name, :email, :password)      
    end

end
