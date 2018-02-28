class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :age
      t.belongs_to :residence
      
      t.timestamps
    end
  end
end
