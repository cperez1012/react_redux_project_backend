class AddFighterIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :fighter_id, :integer
  end
end
