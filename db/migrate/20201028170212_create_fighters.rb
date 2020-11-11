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
      t.integer :win
      t.integer :loss
      t.integer :draw
      t.integer :ko
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end

