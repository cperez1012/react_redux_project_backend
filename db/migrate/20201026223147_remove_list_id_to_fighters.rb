class RemoveListIdToFighters < ActiveRecord::Migration[6.0]
  def change
    remove_reference :fighters, :list
  end
end
