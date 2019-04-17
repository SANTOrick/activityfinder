class UsersController < ApplicationController
# before_action :require_login
# skip_before_action :require_login, only: [:index]
  def index
    @users = User.all
  end

  def show
    @user = find_me
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    @question = Question.find_by(title:"Do you like to hang out alone or with other human beigns?")
      if @user.save
        redirect_to question_path(@question)
      else
          flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def profile
  if !@current_user
    flash[:notice] = "GO MAKE A PROFILE!"
    redirect_to "/users/new"
  end
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
    params.require(:user).permit(:name, :password, :email)
  end
end
