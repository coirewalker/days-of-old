class UserController < ApplicationController

  def index
  	@users = User.all
  end

  def new
  	@users = User.new
  end

  def show
  end

  def edit
  end

end
