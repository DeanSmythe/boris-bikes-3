require 'docking_station'

describe DockingStation do
  it 'docking_station should release bike' do
    expect(subject).to respond_to :release_bike
  end
  it 'release_bike should return a bike object' do
    expect(subject.release_bike).to be_instance_of Bike
  end
  it 'docking station should receive/dock a bike' do
    my_bike = Bike.new
    expect(subject.dock(my_bike)).to eq true
  end
it 'test to see if a bike has been docked' do
  my_bike =Bike.new
  my_docking_station = DockingStation.new
  my_docking_station.dock(my_bike)
  # subject.dock(my_bike)
  expect(my_docking_station.docked_bikes[0]).to eq my_bike

end
end