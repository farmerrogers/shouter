class UsersController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
  	@user = User.new  #this creates an instance for submitting to the database.
  end

  def destroy
  end

  def create
    @user = User.new(params[:user])
    @user.save!
  end
end
