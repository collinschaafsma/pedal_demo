class BikeInterface < ApplicationInterface
  class << self
    def all_bikes
      Bike.all
    end

    def find_bike(id)
      Bike.find(id)
    end

    def new_bike
      Bike.new
    end
  end
end
