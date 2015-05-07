class HomeController < ApplicationController
  def index
  	@user = User.all
  	@message = "Here's a rad message!"
  end

  def about
  end

  
end
