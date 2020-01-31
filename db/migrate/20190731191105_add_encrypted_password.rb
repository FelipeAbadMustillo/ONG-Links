class AddEncryptedPassword < ActiveRecord::Migration[5.1]
  def change
    add_column :organizations, :password_digest, :string
  end
end
