class CreateYards < ActiveRecord::Migration[6.0]
  def change
    create_table :yards do |t|
      t.string :title
      t.string :size
      t.references :cat
    end
  end
end
