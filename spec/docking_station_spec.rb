require 'docking_station'
require 'bike'

describe DockingStation do
  # test the method release_bike exist
  it { is_expected.to respond_to(:release_bike)}
  # test the method DockingStation.release_bike creates a bike.
  it { expect(subject.release_bike).to be_kind_of(Bike)}
  # test that the method dock is called with one argument.
  it { is_expected.to respond_to(:dock).with(1).argument }
  # test that the method bike exist.
  it { is_expected.to respond_to(:bike)}
  # test that when we dock a bike, the bike is returned
  it ' dock something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

end
