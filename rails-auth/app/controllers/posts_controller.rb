class PostsController < ApplicationController
  include SessionsHelper
  before_action :find_post
  before_action :protect_against_tampering, only: [:edit, :update]

  def edit
    
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def protect_against_tampering
    unless is_current_user?(@post.user)
      flash[:message] = "ah ah AH...! You can't do that here!"
      redirect_to current_user
    end
  end
end