class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :first
      t.string :middle
      t.string :last
      t.string :street
      t.string :city
      t.string :zip

      t.timestamps
    end
  end
end