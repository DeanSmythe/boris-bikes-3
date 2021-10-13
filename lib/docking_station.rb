class DockingStation
  
  attr_reader :docked_bikes

  def initialize
    @docked_bikes = []
  end

  def release_bike
    unless @docked_bikes.empty?
      return Bike.new
    else 
      raise "No bikes available"
    end
  end
  
  def dock(bike)
    @docked_bikes.push(bike)
    return true
  end
end

