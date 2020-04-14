class CreateRamenDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :ramen_dishes do |t|
      t.string :title
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
