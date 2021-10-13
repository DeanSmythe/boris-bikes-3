class DockingStation
  
  attr_reader :docked_bikes

  def initialize
    @docked_bikes = []
    @max_bikes = 20
  end

  def release_bike
    unless @docked_bikes.empty?
      return Bike.new
    else 
      raise "No bikes available"
    end
  end
  
  def dock(bike)
    unless @docked_bikes.length >= @max_bikes
    @docked_bikes.push(bike)
    return true
    else
      raise "No space available"
    end
  end
end

