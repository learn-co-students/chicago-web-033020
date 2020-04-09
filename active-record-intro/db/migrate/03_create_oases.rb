class CreateOases < ActiveRecord::Migration[6.0]
  def change
    create_table :oases do |table|
      table.string :name
      table.string :continent
    end
  end
end