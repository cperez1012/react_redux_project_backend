class RemoveUserIdFromLists < ActiveRecord::Migration[6.0]
  def change
    remove_column :lists, :user_id, :string
  end
end
