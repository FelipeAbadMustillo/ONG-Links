class RemoveInnecesary < ActiveRecord::Migration[5.1]
  def change
    remove_column :appointments, :fechaEnlist, :datetime
    rename_column :ratings, :rating, :cant
    change_column :organizations, :rating, :float
    change_column :ratings, :cant, :float
  end
end
