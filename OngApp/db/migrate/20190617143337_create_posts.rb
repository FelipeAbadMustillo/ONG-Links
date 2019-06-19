class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.belongs_to :organization, index :true
      t.text :descPst
      t.string :lugar
      t.datetime :hora
      t.string :ftPst
      t.int :cantMin
      t.int :cantMax
      t.int :cantAct
      t.datetime :published
      t.boolean :full
      t.int :postTime
      t.boolean :expired

      t.timestamps
    end
  end
end
