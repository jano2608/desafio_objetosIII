
class Rectangulo
  attr_accessor :largo, :ancho
  def initialize(largo, ancho)
    @largo=largo
    @ancho=ancho
  end

  def lados
    puts "Largo: #{@largo} - Ancho: #{@ancho}"
  end
end

class Cuadrado
  attr_accessor :lado
  def initialize(lado)
    @lado=lado
  end

  def lados
    puts "Largo: #{@lado} - Ancho: #{@lado}"
  end
end

def perimetro (largo, ancho)
  perimetro = (largo + ancho)*2
  puts "Perimetro: #{perimetro}"
end

def area (largo, ancho)
  area = largo*ancho
  puts "Area: #{area}"
end

c = Cuadrado.new(50)
puts 'Cuadrado'
c.lados
perimetro c.lado, c.lado
area c.lado, c.lado
puts "-------------------------------------------"
r = Rectangulo.new(50,20)
puts 'Rectangulo'
r.lados
perimetro r.largo, r.ancho
area r.largo, r.ancho