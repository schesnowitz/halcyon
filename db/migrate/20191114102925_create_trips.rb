class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.decimal :amount
      t.decimal :driver_rate
      t.decimal :flat_rate
      t.string :origin_business_name
      t.string :origin_address
      t.decimal :distance
      t.string :final_destination_address
      t.string :final_destination_business_name
      t.references :customer, foreign_key: true
      t.references :driver, foreign_key: true

      t.timestamps
    end
  end
end
