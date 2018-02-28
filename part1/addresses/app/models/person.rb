class Person < ApplicationRecord
  belongs_to :residence
  has_one :city, through: :residence
  has_one :province, through: :city
end
