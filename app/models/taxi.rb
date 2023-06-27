class Taxi < ApplicationRecord
    has_many :passengers, through: :rides
    has_many :rides
end
