class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.integer :claw_count
      t.string :coarseness
      t.timestamps
    end
  end
end
