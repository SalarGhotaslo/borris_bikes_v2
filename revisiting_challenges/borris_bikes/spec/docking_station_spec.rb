require 'docking_station'

describe DockingStation do
  it 'releases a bike' do
    expect(subject).to respond_to(:release_bike)
  end
  it 'releases a working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'docks a bike' do
    expect(subject).to respond_to(:dock_bike).with(1).argument
  end

  it 'shows a bike has been docked' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.dock_bike(bike)).to eq bike
  end

  it 'responds to bike' do
    expect(subject).to respond_to(:bike)
  end
end
