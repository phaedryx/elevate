require_relative 'test_helper'

describe Elevator do
  it 'should pick up passengers' do
    elevator = Elevator.new
    elevator.add_passenger(Passenger.new(origin_floor: 1, destination_floor: 2))

    refute elevator.passengers.empty?
  end

  it 'should drop off passengers' do
    elevator1 = Elevator.new(current_floor: 2, destination_floor: 3, passengers: [Passenger.new(origin_floor: 1, destination_floor: 2)])
    elevator1.disembark
    
    assert elevator1.empty?

    elevator2 = Elevator.new(
      current_floor: 2,
      destination_floor: 3,
      passengers: [
        Passenger.new(origin_floor: 1, destination_floor: 2),
        Passenger.new(origin_floor: 1, destination_floor: 5),
      ]
    )
    elevator2.disembark

    assert_equal 1, elevator2.passengers.size
  end

  it 'should move up' do
    elevator = Elevator.new(current_floor: 1, destination_floor: 3)
    elevator.tick
    assert_equal 2, elevator.current_floor
  end

  it 'should move down' do
    elevator = Elevator.new(current_floor: 3, destination_floor: 1)
    elevator.tick
    assert_equal 2, elevator.current_floor
  end

  it 'should stop at its destination' do
    elevator = Elevator.new(current_floor: 2, destination_floor: 2)
    elevator.tick
    refute elevator.destination_floor
  end
end
