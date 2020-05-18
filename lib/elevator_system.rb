class ElevatorSystem
  def initialize(elevator_count:, floor_count:)
    @elevator_count = elevator_count
    @floor_count = floor_count
    @floor_queues = (1..floor_count).each_with_object({}) do |floor, hash|
      hash[floor] = []
    end
    @floor_generators = (1..floor_count).each_with_object({}) do |floor, hash|
      hash[floor] = PassengerGenerator(origin_floor: floor, number_of_floors: floor_count)
    end
    @elevators = Array.new(elevator_count) { Elevator.new }
  end

  def tick

  end
end
