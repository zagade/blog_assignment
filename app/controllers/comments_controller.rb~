class CommentsController < ApplicationController
def create
    @blog_post = BlogPost.find(params[:blog_post_id])
    @comment = @blog_post.comments.create(comment_params)
    redirect_to blog_post_path(@blog_post)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
    def test
    end
end
