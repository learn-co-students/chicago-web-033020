class CreateBigCats < ActiveRecord::Migration[6.0]
  # def up
  #   create_table :cats do |t|
  #     t.string :name
  #     t.integer :age
  #     t.string :breed
  #   end
  # end

  # def down
  #   drop_table :cats
  # end
  
  def change
    create_table :big_cats do |t|
      t.string :name
      t.integer :age
      t.string :breed
    end
  end
end
