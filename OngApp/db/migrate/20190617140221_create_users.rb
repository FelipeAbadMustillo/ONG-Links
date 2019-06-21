class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nombreUsu
      t.string :apellidoUsu
      t.string :pwdUsu
      t.integer :edad
      t.string :gen
      t.string :localidadUsu
      t.integer :telUsu
      t.string :mail
      t.string :ocupacion
      t.string :ftUsu
      t.integer :lvl
      t.integer :exp
      t.integer :cantFlw

      t.timestamps
    end
  end
end
