class Bike
  def self.find(args)
    Struct.new(:id, :name, :description).new(1, 'Bike 1', 'The fanciest bike you ever saw 1')
  end

  def self.all
    10.times.collect do |x|
      Struct.new(:id, :name, :description).new(x, "Bike #{x}", "The fanciest bike you ever saw #{x}")
    end
  end
end
