class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.belongs_to :user, index: :true
      t.belongs_to :post, index: :true
      t.datetime :fechaEnlist

      t.timestamps
    end
  end
end
