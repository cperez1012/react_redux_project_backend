class RemoveUserIdToLists < ActiveRecord::Migration[6.0]
  def change
    remove_reference :lists, :user
  end
end
