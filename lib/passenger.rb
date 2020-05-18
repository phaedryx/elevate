class Passenger
  FIRST_NAMES = %w(Liam Emma Noah Olivia William Ava James Isabella Oliver Sophia Benjamin Charlotte Elijah 
    Lucas Amelia Mason Harper Alexander Abigail Ethan Emily Jacob Elizabeth Michael Mila Logan Evelyn Daniel
    Ella Henry Avery Jackson Sofia Sebastian Camila Aiden Aria Matthew Scarlett Samuel Victoria David Madison
    Joseph Luna Carter Grace Owen Chloe Wyatt Penelope
  )
  LAST_NAMES = %w(Smith Johnson Williams Brown Jones Miller Davis Garcia Rodriguez Wilson)

  attr_reader :id, :name, :origin_floor, :destination_floor

  def initialize(id:,origin_floor:, destination_floor:)
    @id = id
    @name = "#{FIRST_NAMES.sample} #{LAST_NAMES.sample}"
    @origin_floor = origin_floor
    @destination_floor = destination_floor
  end
end
