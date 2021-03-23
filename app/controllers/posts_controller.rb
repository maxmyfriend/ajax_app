class PostsController < ApplicationController

  def index #トップページを表示したい
    @posts = Post.order(id: "DESC")  # メモを降順に（新しい順）
  end

  # def new
  # end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end
end

