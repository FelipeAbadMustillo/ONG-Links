class AddClearanceToOrganizations < ActiveRecord::Migration[5.1]
  def self.up
    change_table :organizations do |t|
      t.string :email
      t.string :encrypted_password, limit: 128
      t.string :confirmation_token, limit: 128
      t.string :remember_token, limit: 128
    end

    add_index :organizations, :email
    add_index :organizations, :remember_token

  end

  def self.down
    change_table :users do |t|
      t.remove :email, :encrypted_password, :confirmation_token, :remember_token
    end
  end

end
