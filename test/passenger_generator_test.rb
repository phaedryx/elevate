require_relative 'test_helper'

describe PassengerGenerator do
  it 'should generate a passenger for a different floor' do
    generator = PassengerGenerator.new(frequency: 1.0, origin_floor: 1, number_of_floors: 2)
    passenger = generator.tick
    assert passenger
    assert_equal 2, passenger.destination_floor
  end

  it 'should generate a passenger with a unique id each tick' do
    generator = PassengerGenerator.new(frequency: 1.0, origin_floor: 1, number_of_floors: 2)
    passenger1 = generator.tick
    passenger2 = generator.tick
    passenger3 = generator.tick

    assert_equal '1-1', passenger1.id
    assert_equal '1-2', passenger2.id
    assert_equal '1-3', passenger3.id
  end
end
