class CreateTripTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :trip_transactions do |t|
      t.string :description
      t.decimal :amount
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
