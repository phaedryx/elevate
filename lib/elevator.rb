class Elevator
  attr_reader :current_floor, :destination_floor, :passengers

  def initialize(current_floor: 0, destination_floor: nil, passengers: [])
    @current_floor = current_floor
    @destination_floor = destination_floor
    @passengers = passengers
  end
end
