class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :load_contact

      t.timestamps
    end
  end
end
