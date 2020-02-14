class PostsController < ApplicationController
  before_action :require_login, only: [:show]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def require_login
    render :file => "public/404.html", :status => :unauthorized unless user_signed_in?
  end
end
