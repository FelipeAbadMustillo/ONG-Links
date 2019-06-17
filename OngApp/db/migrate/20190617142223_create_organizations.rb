class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.string :nombreOng
      t.string :pwdOng
      t.text :desc
      t.string :sede
      t.int :tel
      t.string :contact
      t.string :bnnr
      t.string :ftOng
      t.int :cantFlw
      t.date :fund
      t.float :rating

      t.timestamps
    end
  end
end
