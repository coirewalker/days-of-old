class HomeController < ApplicationController
  def index
  	@user = User.all
  	@message = "Here's a rad message for the homepage!"
  end

  def about
  	@user = User.all 
  	@message = "the about page rocks!"
  end

  
end
