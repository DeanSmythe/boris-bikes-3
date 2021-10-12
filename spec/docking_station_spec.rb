require 'docking_station'

describe DockingStation do
  it 'docking_station should release bike' do
    expect(subject).to respond_to :release_bike
  end
  it 'release_bike should return a bike object' do
    expect(subject.release_bike).to be_instance_of Bike
  end
end