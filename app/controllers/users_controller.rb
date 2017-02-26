class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit

  end

  def create
    @user = User.new(user_params)
    redirect_to :users if @user.save
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :description, :age, :city, :zipcode)
  end
end
