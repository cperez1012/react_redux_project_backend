class AddListToFighter < ActiveRecord::Migration[6.0]
  def change
    add_reference :fighters, :list, foreign_key: true
  end
end
