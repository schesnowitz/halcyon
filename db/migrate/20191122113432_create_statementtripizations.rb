class CreateStatementtripizations < ActiveRecord::Migration[5.2]
  def change
    create_table :statementtripizations do |t|
      t.references :trip, foreign_key: true
      t.references :driver_statement, foreign_key: true

      t.timestamps
    end
  end
end
