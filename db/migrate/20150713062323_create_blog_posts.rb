class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.text :post
      t.text :category

      t.timestamps null: false
    end
  end
end
