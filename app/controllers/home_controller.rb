class HomeController < ApplicationController
  def index
  	@user = User.all
  	@message = "Here's a rad message for the homepage!"
  	respond_to do |follow|
      follow.html
      follow.js
    end
  end

  def about
  	@user = User.all 
  	@message = "the about page rocks!"
  end
  
end
