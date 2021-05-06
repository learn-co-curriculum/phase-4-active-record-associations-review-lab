class Taxi < ApplicationRecord
  has_many :rides
  has_many :passengers, through: :rides
end
