class CreateRoars < ActiveRecord::Migration[6.0]
  def change
    create_table :roars do |t|
      t.string :message

      t.timestamps
    end
  end
end
