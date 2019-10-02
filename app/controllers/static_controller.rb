class StaticController < ApplicationController
  def home
  	@user = User.new
  	@posts = Post.all
  	@post = Post.new
  end

  def index
  	@posts = Post.recent.page(params[:page]).per(5)
  	@post = Post.new
  end
end
