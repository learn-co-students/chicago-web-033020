class CreateBearCats < ActiveRecord::Migration[5.2]
  def change
    create_table :bear_cats do |t|
      t.string :name
      t.integer :hunger

      t.timestamps
    end
  end
end
