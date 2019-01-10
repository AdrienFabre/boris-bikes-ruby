require_relative 'bike'

class DockingStation

attr_reader :bike

  def release_bike
    raise Exception.new("no bike available") unless @bike
    @bike
    #
    # if @bike != nil
    #   @bike = Bike.new
    # else
    # raise Exception.new("no bike available")
    # end
  end

  def dock(bike)
    @bike = bike
  end



end
