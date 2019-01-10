require_relative 'bike'

class DockingStation

attr_reader :bike

  def initialize
    @capacity = 10
    @count = 0
  end

  def release_bike
    raise Exception.new("no bike available") unless @bike
    @count -= 1
    @bike

    #
    # if @bike != nil
    #   @bike = Bike.new
    # else
    # raise Exception.new("no bike available")
    # end
  end

  def dock(bike)
   raise Exception.new("dock full") unless @count < @capacity
   @count += 1
   puts @count
   @bike = bike
  end
end
