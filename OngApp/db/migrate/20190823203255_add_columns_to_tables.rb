class AddColumnsToTables < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :desc, :text
    rename_table :Posts_Tags, :posts_tags
  end
end
