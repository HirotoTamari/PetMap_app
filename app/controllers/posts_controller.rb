class PostsController < ApplicationController
  # アクセス制限

  def index
    @posts = Post.all.order(created_at: :desc)
    @post = Post.new
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def create
    @post = Post.new(content: params[:content])
    
    if @post.save
      flash[:notice] = "投稿を作成しました"
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
    
  end

  def destroy
    @post=Post.find_by(id: params[:id])
    @post.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to("/posts/index")
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end
  
  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    if @post.save
      flash[:notice]="投稿を編集しました"
      redirect_to("/posts/index")
    else
      render("posts/edit")
    end
  end
end
