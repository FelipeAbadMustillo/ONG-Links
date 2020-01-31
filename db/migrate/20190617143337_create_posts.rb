class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.belongs_to :organization, index: :true
      t.text :descPst
      t.string :lugar
      t.datetime :hora
      t.string :ftPst #mas adelante
      t.integer :cantMin
      t.integer :cantMax
      t.integer :cantAct
      t.datetime :published #borrado
      t.boolean :full #borrado
      t.integer :postTime #mas adelante
      t.boolean :expired #mas adelante

      t.timestamps
    end
  end
end
