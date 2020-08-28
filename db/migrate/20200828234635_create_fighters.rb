class CreateFighters < ActiveRecord::Migration[6.0]
  def change
    create_table :fighters do |t|
      t.string :name
      t.string :alias
      t.string :nationality
      t.string :division
      t.string :stance
      t.string :height
      t.string :reach
      t.string :status
      t.boolean :champion

      t.timestamps
    end
  end
end
