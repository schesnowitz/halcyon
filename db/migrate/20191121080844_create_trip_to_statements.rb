class CreateTripToStatements < ActiveRecord::Migration[5.2]
  def change
    create_table :trip_to_statements do |t|
      t.references :trip, foreign_key: true
      t.references :driver_statement, foreign_key: true
      t.boolean :add_to_statement

      t.timestamps
    end
  end
end
