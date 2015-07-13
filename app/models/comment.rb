class Comment < ActiveRecord::Base
	belongs_to :blog_posts
end
