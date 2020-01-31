class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.string :nombreOng
      t.string :pwdOng #borrado
      t.text :desc
      t.string :sede
      t.integer :tel
      t.string :contact #borrado
      t.string :bnnr #mas adelante y mediante UPDATE
      t.string :ftOng #mas adelante y mediante UPDATE
      t.integer :cantFlw #borrado
      t.date :fund
      t.float :rating #mas adelante

      t.timestamps
    end
  end
end
