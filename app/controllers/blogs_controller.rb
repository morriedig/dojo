class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
    @categories = Category.all
  end

  def create
    @blog = Blog.create(blog_params)
    params["blog"]["category_id"].each do |sort|
      @blog.sorts.create(:category_id => sort.to_i )
    end
    redirect_to root_path
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update

  end

  private

  def blog_params
    params.require(:blog).permit(:title, :user_id, :photo, :content, :auth, :state)
  end

end
