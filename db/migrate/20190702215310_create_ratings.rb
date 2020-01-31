class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.belongs_to :organization, index: :true
      t.belongs_to :user, index: :true
      t.integer :rating

      t.timestamps
    end
  end
end
