class RemovePwdUsuFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :pwdUsu, :string
    remove_column :users, :gen, :string
    remove_column :users, :mail, :string
    remove_column :users, :lvl, :integer
    remove_column :users, :cantFlw, :integer
  end
end
