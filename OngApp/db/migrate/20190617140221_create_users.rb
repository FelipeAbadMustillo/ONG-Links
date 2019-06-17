class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nombreUsu
      t.string :apellidoUsu
      t.string :pwdUsu
      t.int :edad
      t.string :gen
      t.string :localidadUsu
      t.int :telUsu
      t.string :mail
      t.string :ocupacion
      t.string :ftUsu
      t.int :lvl
      t.int :exp
      t.int :cantFlw

      t.timestamps
    end
  end
end
