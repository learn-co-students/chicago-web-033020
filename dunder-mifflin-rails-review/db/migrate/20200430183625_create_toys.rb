class CreateToys < ActiveRecord::Migration[5.1]
  def change
    create_table :toys do |t|
      t.belongs_to :dog, foreign_key: true
      t.string :name
      t.string :color

      t.timestamps
    end
  end
end
