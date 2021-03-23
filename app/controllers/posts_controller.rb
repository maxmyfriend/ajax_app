class PostsController < ApplicationController

  def index #トップページを表示したい
    @posts = Post.order(id: "DESC")  # メモを降順に（新しい順）
  end

  # def new
  # end

  def create
    post = Post.create(content: params[:content])
    render json:{ post: post }
  end
end

