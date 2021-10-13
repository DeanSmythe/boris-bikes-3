class DockingStation
  
  attr_reader :docked_bikes

# def docked_bikes
#   @docked_bikes
# end

  def initialize
    test_array= []
    puts test_array
  @docked_bikes = test_array

  end

  def release_bike
    return Bike.new
  end
  
  def dock(bike)
    puts bike
    puts @docked_bikes
    @docked_bikes.push(bike)
    puts @docked_bikes
    return true
  end
end

