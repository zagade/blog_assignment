class BlogPost < ActiveRecord::Base
	has_many :comments
	validates :title, presence: true, length: { minimum: 5}
	validates :post,  presence: true, length: { minimum: 50}
end
