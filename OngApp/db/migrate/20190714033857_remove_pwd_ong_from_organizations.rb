class RemovePwdOngFromOrganizations < ActiveRecord::Migration[5.1]
  def change
    remove_column :organizations, :pwdOng, :string
    remove_column :organizations, :contact, :string
    remove_column :organizations, :cantFlw, :integer
  end
end
