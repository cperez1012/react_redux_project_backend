class RemoveListIdFromFighters < ActiveRecord::Migration[6.0]
  def change
    remove_column :fighters, :list_id, :integer
  end
end
