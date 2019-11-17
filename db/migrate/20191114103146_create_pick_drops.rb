class CreatePickDrops < ActiveRecord::Migration[5.2]
  def change
    create_table :pick_drops do |t|
      t.string :address
      t.boolean :pick_up
      t.boolean :drop_off
      t.integer :order
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
