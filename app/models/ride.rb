class Ride < ApplicationRecord
    belongs_to :taxi
    belongs_to :passenger
end
