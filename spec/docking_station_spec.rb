require 'docking_station'

describe DockingStation do
  it 'docking_station should release bike' do
    expect(subject).to respond_to :release_bike
  end
  it 'release_bike should return a bike object' do
    my_bike = Bike.new
    my_docking_station = DockingStation.new
    my_docking_station.dock(my_bike)
    expect(my_docking_station.release_bike).to be_instance_of Bike
  end
  it 'docking station should receive/dock a bike' do
    my_bike = Bike.new
    my_docking_station = DockingStation.new
    expect(my_docking_station.dock(my_bike)).to eq true
  end
  it 'test to see if a bike has been docked' do
  my_bike =Bike.new
  my_docking_station = DockingStation.new
  my_docking_station.dock(my_bike)
  expect(my_docking_station.docked_bikes[0]).to eq my_bike
  end

  it 'not release a bike, if there isnt one' do
    my_docking_station = DockingStation.new
    expect{my_docking_station.release_bike}.to raise_error('No bikes available')
  end

  it 'Do not dock a bike, if the dock is full' do
    my_docking_station = DockingStation.new
    my_bike = Bike.new
    my_bike2 =Bike.new
    my_docking_station.dock(my_bike)
    expect{my_docking_station.dock(my_bike2)}.to raise_error('No space available')
  end

end

# Write RSpec tests that expect errors
# Use fail or raise to raise an error
# # Use a 'guard condition'