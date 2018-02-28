class CreateHolds < ActiveRecord::Migration[5.1]
  def change
    create_table :holds do |t|
      t.date :date_placed
      t.belongs_to :book
      t.belongs_to :patron

      t.timestamps
    end
  end
end
