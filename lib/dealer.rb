# require_relative 'car'

class Dealer

  attr_reader :inventory, :all_makes

  def initialize
    @inventory = []
  end

  def add_inventory(car)
    @inventory << car
  end

  def all_makes
    inventory.map { |car| car.make }
  end

  def all_years
    inventory.map { |car| car.year }
  end

  def find_first(arg)
    inventory.find { |car| car.make == arg }
  end

  def find_many(arg)
    inventory.find_all { |car| car.make == arg }
  end

end
