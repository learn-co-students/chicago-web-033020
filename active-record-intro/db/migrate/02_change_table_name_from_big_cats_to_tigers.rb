class ChangeTableNameFromBigCatsToTigers < ActiveRecord::Migration[6.0]
  def change
    rename_table :big_cats, :tigers
  end
end