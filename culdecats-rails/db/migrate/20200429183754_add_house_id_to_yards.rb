class AddHouseIdToYards < ActiveRecord::Migration[6.0]
  def change
    add_column :yards, :house_id, :integer
  end
end
