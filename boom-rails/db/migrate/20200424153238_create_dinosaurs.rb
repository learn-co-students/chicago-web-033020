class CreateDinosaurs < ActiveRecord::Migration[6.0]
  def change
    create_table :dinosaurs do |t|
      t.string :name
      t.integer :height
      t.boolean :is_cool
      t.datetime :b_day

      t.timestamps
    end
  end
end
