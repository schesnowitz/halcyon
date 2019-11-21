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
      t.references :driver_statement, foreign_key: true
      t.boolean :custom_driver_rate, default: false
      t.boolean :custom_flat_rate, default: false
      t.string :status, default: ''
      t.datetime :completed_on
      t.timestamps
    end
  end
end
