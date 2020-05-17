require_relative 'test_helper'

describe PassengerGenerator do
  it 'should generate a passenger for a different floor' do
    generator = PassengerGenerator.new(frequency: 1.0, origin_floor: 1, number_of_floors: 2)
    passenger = generator.tick
    assert passenger
    assert_equal 2, passenger.destination_floor
  end
end
