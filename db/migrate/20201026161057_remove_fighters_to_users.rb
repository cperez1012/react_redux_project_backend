class RemoveFightersToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :fighter_id, :integer
  end
end
