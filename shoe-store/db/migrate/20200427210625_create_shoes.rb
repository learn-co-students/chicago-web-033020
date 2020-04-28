class CreateShoes < ActiveRecord::Migration[6.0]
  def change
    create_table :shoes do |t|
      t.integer :size
      t.string :color

      t.timestamps
    end
  end
end
