class RemovePublishedFromPosts < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :published, :datetime
    remove_column :posts, :full, :boolean
  end
end
