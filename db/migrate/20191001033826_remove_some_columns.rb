class RemoveSomeColumns < ActiveRecord::Migration[5.1]
  def change
    remove_column :follows, :fechaFlw
  end
end
