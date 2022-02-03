class PostsController < ApplicationController
  before_action :move_to_index, except: [:index]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
  end

  private

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
  
  def post_params
    params.require(:post).permit(:title, :text)
  end
end
