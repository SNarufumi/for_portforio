class BlogsController < ApplicationController
#   before_action :authenticate_user!, only:[:new,:create,:edit,:update,:destroy]

	def index
		@blogs=Blog.all
		@blogs = Blog.page(params[:page]).per(4)
	end
	def new
		@blog=Blog.new
	end
	def create
		@blog=Blog.new(blog_params)
		if @blog.save
		  redirect_to blogs_path
		else
		  render "new"
		end
	end
	def show
		@blog=Blog.find(params[:id])
	end
	def edit
		@blog=Blog.find(params[:id])
	end
	def update
		@blog=Blog.find(params[:id])
		if @blog.update(blog_params)
			redirect_to blogs_path
		else
			redirect_to edit_blog_path
		end
	end
	def destroy
		@blogs=Blog.find(params[:id])
		@blogs.destroy
		redirect_to blogs_path
	end

	private
	  def blog_params
	  	params.require(:blog).permit(:title, :content ,:category_list)
	  end
end

