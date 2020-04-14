class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.integer :bear_cat_id
      t.integer :ramen_dish_id

      t.timestamps
    end
  end
end

