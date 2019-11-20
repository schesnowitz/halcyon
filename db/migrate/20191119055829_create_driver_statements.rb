class CreateDriverStatements < ActiveRecord::Migration[5.2]
  def change
    create_table :driver_statements do |t|
      t.references :driver, foreign_key: true
      t.date :due_date
      t.boolean :paid

      t.timestamps
    end
  end
end
