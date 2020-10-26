class CreateJoinTableUserFighter < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :fighters do |t|
      t.index [:user_id, :fighter_id]
      t.index [:fighter_id, :user_id]
      # t.integer :user_id
      # t.integer :fighter_id
    end
  end
end
