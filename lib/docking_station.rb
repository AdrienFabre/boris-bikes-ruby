require_relative 'bike'

class DockingStation

attr_reader :bikes
DEFAULT_CAPACITY = 20
  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise Exception.new("no bike available") if empty?
    @bikes.pop

  end

  def dock(bike)
   raise Exception.new("dock full") if full?
   @bikes << bike
   bike
  end

private
  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end
  def empty?
    @bikes.empty?
  end
end
