class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.date :hire_date

      t.timestamps
    end
  end
end
