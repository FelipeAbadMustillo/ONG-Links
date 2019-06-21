class CreateFollows < ActiveRecord::Migration[5.1]
  def change
    create_table :follows do |t|
      t.belongs_to :organization, index: :true
      t.belongs_to :user, index: :true
      t.datetime :fechaFlw

      t.timestamps
    end
  end
end
