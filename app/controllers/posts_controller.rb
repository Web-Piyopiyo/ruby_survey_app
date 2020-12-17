class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find_by(id: params[:id])
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to("/posts/success")
    else
      render("posts/new")
    end
  end
  
  private
  def post_params
    if params["post"].has_key?(:property)
      params["post"]["property"] = params.require(:post).require(:property).join("、")
    end
    params.require(:post).permit(:name, :age, :gender, :property, :request)
  end
  
  def success
  end
end
