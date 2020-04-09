class AddOasisIdToTigers < ActiveRecord::Migration[6.0]
  def change
    add_column :tigers, :oasis_id, :integer
  end
end