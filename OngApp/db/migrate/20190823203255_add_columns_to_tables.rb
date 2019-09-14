class AddColumnsToTables < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :desc, :text
    add_column :users, :sexo, :string
    drop_table :Posts_Tags
    drop_table :Tags_Users
    drop_table :tags
  end
end
