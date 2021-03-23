class PostsController < ApplicationController

  def index #トップページを表示したい
    @posts = Post.all  # １番目のレコードを@postに代入
  end
  def new
  end
  def create
    Post.create(content: params[:content])
  end
end

