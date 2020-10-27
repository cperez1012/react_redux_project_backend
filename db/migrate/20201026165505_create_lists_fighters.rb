class CreateListsFighters < ActiveRecord::Migration[6.0]
  def change
    create_table :lists_fighters do |t|
      t.references :fighter, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
