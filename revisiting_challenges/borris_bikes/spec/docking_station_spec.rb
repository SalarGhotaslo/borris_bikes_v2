require 'docking_station'

describe DockingStation do
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'raises an error when no bikes are available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#docks_bike' do
    it 'docks a bike' do
      expect(subject).to respond_to(:dock_bike).with(1).argument
    end
    # it 'shows a bike has been docked' do
    #   bike = Bike.new
    #   subject.dock_bike(bike)
    #   expect(subject.bike).to eq bike
    # end
    it 'should raise an error when docking station is full' do
      20.times { subject.dock_bike(Bike.new) }
      expect { subject.dock_bike Bike.new }.to raise_error 'Docking station full'
    end
  end
end
