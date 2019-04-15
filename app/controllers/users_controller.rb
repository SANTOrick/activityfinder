class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = find_me

  end

  def new

  end

  def create
    @user = User.create(user_params)
    redirect_to @user
  end

  def edit
    @user = find_me
  end

  def update
    @user = find_me
    @user.update(user_params)

    redirect_to @user
  end


  def find_me
    User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit()
  end
end
