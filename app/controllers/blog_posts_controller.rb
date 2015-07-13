class BlogPostsController < ApplicationController
	
	def index
		@blog_post=BlogPost.all
	end

	def new 
		@blog_post=BlogPost.new
	end

	def create
		#render plain: params[:blog_post].inspect
		@blog_post=BlogPost.new(blog_post_params)
		if @blog_post.save
			redirect_to @blog_post
		else
			render 'new'
		end
	end

	def edit
	  @blog_post = BlogPost.find(params[:id])
	end

	def update
	  @blog_post = BlogPost.find(params[:id])
	 
	  if @blog_post.update(blog_post_params)
	    redirect_to @blog_post
	  else
	    render 'edit'
	  end
	end

	def show
		@blog_post=BlogPost.find(params[:id])
	end

	def destroy
	  @blog_post = BlogPost.find(params[:id])
	  @blog_post.destroy
	 
	  redirect_to blog_posts_path
	end

	private
	def blog_post_params
		params.require(:blog_post).permit(:title,:post,:category)
	end
end
