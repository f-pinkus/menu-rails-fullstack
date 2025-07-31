class CreateMeals < ActiveRecord::Migration[8.0]
  def change
    create_table :meals do |t|
      t.string :day
      t.string :label
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
