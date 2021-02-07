require_relative 'bike'


class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty? 
    @bikes.pop
  end

  def dock_bike(bike)
    fail 'Docking station full' if full? 
    @bikes << bike
  end
end

private
DEFAULT_CAPACITY = 20

def full?
    @bikes.count >= DEFAULT_CAPACITY
end

def empty?
    @bikes.empty?
end
