class UsersController < ApplicationController
  include SessionsHelper
  before_action :authorize!, only: [:show]
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

  def index
    @users = User.all
  end

  def show
    @current = current_user
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def authorize!
    unless session[:user_id]
      flash[:message] = "You must be logged in to do that!"
      redirect_to login_path
    end
  end
end