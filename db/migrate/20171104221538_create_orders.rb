class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :ticket_number
      t.string :phone_number
      t.string :name

      t.timestamps
    end
  end
end
