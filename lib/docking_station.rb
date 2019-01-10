require_relative 'bike'

class DockingStation

attr_reader :docked_bikes

  def initialize
    @capacity = 20
    @docked_bikes = []
  end

  def release_bike
    raise Exception.new("no bike available") unless @docked_bikes.length > 0
    @docked_bikes.pop


  end

  def dock(bike)
   raise Exception.new("dock full") unless @docked_bikes.length < @capacity
   @docked_bikes << bike
   bike

  end
end
