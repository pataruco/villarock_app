class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.date :date
      t.integer :category

      t.timestamps null: false
    end
  end
end
