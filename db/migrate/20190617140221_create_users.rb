class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nombreUsu
      t.string :apellidoUsu
      t.string :pwdUsu #borrado
      t.integer :edad
      t.string :gen #borrado
      t.string :localidadUsu
      t.integer :telUsu
      t.string :mail #borrado
      t.string :ocupacion
      t.string :ftUsu #mas adelante y mediante update no desde el registro
      t.integer :lvl #borrado
      t.integer :exp
      t.integer :cantFlw #borrado

      t.timestamps
    end
  end
end
