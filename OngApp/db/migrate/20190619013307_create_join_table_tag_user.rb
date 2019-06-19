class CreateJoinTableTagUser < ActiveRecord::Migration[5.1]
  def change
    create_join_table :Tags, :Users do |t|
      t.index [:tag_id, :user_id]
      t.index [:user_id, :tag_id]
    end
  end
end
