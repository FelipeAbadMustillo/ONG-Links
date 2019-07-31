class TakeClearanceOffOrganizations < ActiveRecord::Migration[5.1]
  def change
    remove_column :organizations, :encrypted_password
    remove_column :organizations, :confirmation_token
    remove_column :organizations, :remember_token
  end
end
