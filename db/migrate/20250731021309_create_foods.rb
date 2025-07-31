class CreateFoods < ActiveRecord::Migration[8.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.references :meal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
