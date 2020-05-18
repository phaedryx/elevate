require_relative 'test_helper'

describe Passenger do
  it 'should start with a name' do
    passenger = Passenger.new(id: '', origin_floor: 0, destination_floor: 0)
    assert passenger.name
  end
end
