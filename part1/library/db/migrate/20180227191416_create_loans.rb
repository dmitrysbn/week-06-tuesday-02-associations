class CreateLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :loans do |t|
      t.date :due_date
      t.boolean :renewed
      t.belongs_to :book
      t.belongs_to :patron

      t.timestamps
    end
  end
end
