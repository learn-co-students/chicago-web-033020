class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.integer :claw_count
      t.string :coarseness
    end
  end
end
