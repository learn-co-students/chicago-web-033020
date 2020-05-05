class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      p @user.errors.full_messages
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    if session[:user_id]
      @current = User.find(session[:user_id])
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end