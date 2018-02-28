class CreateProvinces < ActiveRecord::Migration[5.1]
  def change
    create_table :provinces do |t|
      t.string :name
      t.integer :year_founded
      t.belongs_to :country

      t.timestamps
    end
  end
end
