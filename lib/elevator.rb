class Elevator
  attr_reader :current_floor, :passengers
  attr_accessor :destination_floor

  def initialize(current_floor: 0, destination_floor: nil, passengers: [])
    @current_floor = current_floor
    @destination_floor = destination_floor
    @passengers = passengers
  end

  def empty?
    @passengers.empty?
  end

  def add_passenger(passenger)
    @passengers << passenger
    puts "#{passenger.name} gets on on floor #{@current_floor}"
  end

  def disembark
    leavers, @passengers = @passengers.partition do |passenger|
      passenger.destination_floor == @current_floor
    end
    leavers.each do |leaver|
      puts "#{leaver.name} gets off on floor #{@current_floor}"
    end
  end

  def tick
    disembark

    unless passengers.empty?
      @destination_floor ||= @passengers.first.destination_floor
    end

    return unless @destination_floor

    if @current_floor == @destination_floor
      @destination_floor = nil
    elsif @current_floor < @destination_floor
      @current_floor += 1
    else
      @current_floor -= 1
    end
  end
end
