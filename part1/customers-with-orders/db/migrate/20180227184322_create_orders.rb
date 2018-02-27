class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :order_number
      t.date :date
      t.belongs_to :customer

      t.timestamps
    end
  end
end
