class RemoveUserIdFighterIdFromLists < ActiveRecord::Migration[6.0]
  def change
    remove_column :lists, :user_id, :integer
    remove_column :lists, :fighter_id, :integer
  end
end
