class RemoveCreateJoinTableUserFighter < ActiveRecord::Migration[6.0]
  def change
    drop_join_table :users, :fighters do |t|
      t.index [:user_id, :fighter_id]
      t.index [:fighter_id, :user_id]
    end
  end
end
