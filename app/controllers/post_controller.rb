class PostController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_index_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    puts @post
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to post_show_path
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to post_index_path
  end


  private
  def post_params
    params.require(:post).permit(:title, :description)
  end
end


