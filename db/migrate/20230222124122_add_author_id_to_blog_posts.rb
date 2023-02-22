class AddAuthorIdToBlogPosts < ActiveRecord::Migration[7.0]
  def change
    add_reference(:blog_posts, :author)
    # add_column(:blog_posts, :author_id, :integer)
    # add_index(:blog_posts, :author_id)
  end
end
