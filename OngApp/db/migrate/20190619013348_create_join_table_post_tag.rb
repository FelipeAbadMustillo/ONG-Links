class CreateJoinTablePostTag < ActiveRecord::Migration[5.1]
  def change
    create_join_table :Posts, :Tags do |t|
      t.index [:post_id, :tag_id]
      t.index [:tag_id, :post_id]
    end
  end
end
