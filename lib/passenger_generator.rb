require_relative 'passenger'

# generates a passenger at a rate of frequency (decimal between 0-1),
# starting on the given floor and going to a different floor (assume a 
# passenger doesn't want to go to the same floor.)
class PassengerGenerator
  attr_reader :frequency, :origin_floor, :number_of_floors

  def initialize(frequency: 0.1, origin_floor:, number_of_floors:)
    @frequency = frequency
    @origin_floor = origin_floor
    @number_of_floors = number_of_floors
    @ticks = 0
  end

  def tick
    @ticks += 1
    # didn't randomly generate a passenger this time
    return nil if rand > @frequency

    destination_floor = @origin_floor # start 
    while(destination_floor == @origin_floor)
      destination_floor = rand(1..@number_of_floors) # ensure a different floow
    end

    Passenger.new(
      id: "#{@origin_floor}-#{@ticks}",
      origin_floor: @origin_floor, 
      destination_floor: destination_floor,
    )
  end
end
