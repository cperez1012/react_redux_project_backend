class AddListIdToFighters < ActiveRecord::Migration[6.0]
  def change
    add_column :fighters, :list_id, :integer
  end
end
