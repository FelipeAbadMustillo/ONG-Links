class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nombreUsu
      t.string :apellidoUsu
      t.string :pwdUsu
      t.integer :edad
      t.string :gen #esta por verse
      t.string :localidadUsu
      t.integer :telUsu
      t.string :mail
      t.string :ocupacion
      t.string :ftUsu #mas adelante y mediante update no desde el registro
      t.integer :lvl #dsp vere de calcularlo simplemente con el exp
      t.integer :exp
      t.integer :cantFlw

      t.timestamps
    end
  end
end
