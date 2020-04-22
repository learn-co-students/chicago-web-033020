class CreateYards < ActiveRecord::Migration
  def change
    create_table :yards do |t|
      t.string :title
      t.string :size
      t.integer :cat_id
      # t.references :cat
    end
  end
end
