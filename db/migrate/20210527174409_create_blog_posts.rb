class CreateBlogPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :blog_posts do |t|
      t.text :title
      t.text :content
      t.datetime :posted_date
      t.timestamps
    end
  end
end
