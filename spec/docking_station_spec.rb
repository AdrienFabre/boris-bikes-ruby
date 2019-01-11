require 'docking_station'
require 'bike'

describe DockingStation do
  describe '#release_bike' do
    # test the method release_bike exist
    it { is_expected.to respond_to(:release_bike)}
    # test the method DockingStation.release_bike creates a bike.
    it 'release a bike if there is a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to be_kind_of(Bike)
    end
    it 'raises error when 0 bikes are available' do
     expect {subject.release_bike}.to raise_error("no bike available")
    end
  end
  # test that the method dock is called with one argument.
  it { is_expected.to respond_to(:dock).with(1).argument }
  # test that the method bike exist.
  it { is_expected.to respond_to(:bikes)}
  # test that when we dock a bike, the bike is returned
  it ' dock something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
  it 'raises an error when user tries to dock a bike when dock is full' do
    capacity = 20
    capacity.times{subject.dock(Bike.new)}
    expect { subject.dock(Bike.new) }.to raise_error("dock full")
  end

  it 'gives an array of bikes' do
    expect(subject.bikes).to be_a(Array)
  end

  it 'set a different bike capacity ' do
    subject = DockingStation.new(5)
    expect(subject.instance_variable_get(:@capacity)).to eq(5)
  end

  it 'set a default bike capacity' do
    subject = DockingStation.new
    expect(subject.instance_variable_get(:@capacity)).to eq DockingStation::DEFAULT_CAPACITY 
  end
end
