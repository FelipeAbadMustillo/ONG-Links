class RemoveInnecesary < ActiveRecord::Migration[5.1]
  def change
    remove_column :appointments, :fechaEnlist, :datetime
  end
end
