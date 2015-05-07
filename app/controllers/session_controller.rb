class SessionController < ApplicationController
  
  def new
  end

  def create 
  	@user = User.find_by(username: params[:username])
  	if @user and @user.password == params[:password]
  		session[:user_id] = @user.user_id
  		flash[:notice] = "Thanks for logging in!"
  		redirect_to @user
  	else 
  		flash[:alert] = "You password is incorrect."
  		render :new
  	end
	end

	def destroy
		session[:user_id] = nil
		flash[:notice] = "Bye!  See you soon!"
		redirect_to root_path
	end

end
