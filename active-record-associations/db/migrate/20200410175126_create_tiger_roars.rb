class CreateTigerRoars < ActiveRecord::Migration[6.0]
  def change
    create_table :tiger_roars do |t|
      t.integer :tiger_id
      t.integer :roar_id
      t.integer :volume

      t.timestamps
    end
  end
end
