class SessionsController < ApplicationController


  def login_form

  end

  def login
    @user = User.find_by(email: params[:user][:email])
    @question = Question.find_by(title:"Do you like to hang out alone or with other human beigns?")
    # byebug
    if @user && @user.authenticate(params[:user][:password])
      redirect_to question_path(@question)
   else
     flash[:errors] = "Wrong username and password!!!"
     redirect_to "/login_form"
   end


  end




end