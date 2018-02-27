class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :email
      t.string :mailing_address
      t.string :name

      t.timestamps
    end
  end
end
