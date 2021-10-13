class DockingStation
  
  attr_reader :docked_bikes

# def docked_bikes
#   @docked_bikes
# end

  def intialize
  @docked_bikes = []
  end

  def release_bike
    return Bike.new
  end
  
  def dock(bike)
    puts bike
    puts @docked_bikes
    @docked_bikes.push(bike)
    puts @docked_bikes
    # return true
  end
end

