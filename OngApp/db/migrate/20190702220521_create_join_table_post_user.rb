class CreateJoinTablePostUser < ActiveRecord::Migration[5.1]
  def change
    create_join_table :posts, :users do |t|
      t.index [:post_id, :user_id]
    end
  end
end
