require 'rails_helper'

RSpec.describe Ride, type: :model do
  let(:taxi) { Taxi.create }
  let(:passenger) { Passenger.create }

  it 'belongs to a passenger' do
    ride = Ride.create(passenger_id: passenger.id, taxi_id: taxi.id)

    expect(ride.passenger).to eq(passenger)
  end

  it 'belongs to a taxi' do
    ride = Ride.create(passenger_id: passenger.id, taxi_id: taxi.id)

    expect(ride.taxi).to eq(taxi)
  end
end
