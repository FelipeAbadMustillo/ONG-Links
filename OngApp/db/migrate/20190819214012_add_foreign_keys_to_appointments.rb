class AddForeignKeysToAppointments < ActiveRecord::Migration[5.1]
  def change
    remove_column :appointments, :user_id
    remove_column :appointments, :post_id
    add_reference(:appointments, :user, foreign_key: true, index: true)
    add_reference(:appointments, :post, foreign_key: true, index: true)
    add_column :posts, :exp, :integer
  end
end
