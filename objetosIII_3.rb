class Vehicle
  def initialize(model, year)
    @model=model
    @year=year
    @start=false
  end

  def engine_start
    @start=true
  end
end

class Car < Vehicle
  @@counter = 0
  attr_accessor :model, :year
  def initialize(model, year)
    super
    @@counter += 1
  end

  def self.counter
    puts @@counter
  end

  def engine_start
    puts 'El motor se ha encendido!'
    super
  end
end

c = ''
10.times do
  c = Car.new 'Camaro', 98
  puts c
end

puts Car.counter
puts c.engine_start
