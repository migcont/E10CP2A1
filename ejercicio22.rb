module Formula
  def square?
    self.class == Cuadrado
  end

  def perimetro
    if square?
      4 * lado
    else
      2 * (base + altura)
    end
  end

  def area
    if square?
      lado**2
    else
      base * altura
    end
  end
end

class Rectangulo
  include Formula
  attr_reader :base, :altura
  def initialize(base, altura)
    @base = base
    @altura = altura
  end
end

class Cuadrado
  include Formula
  attr_reader :lado
  def initialize(lado)
    @lado = lado
  end
end

c1 = Cuadrado.new(4)

r1 = Rectangulo.new(4, 5)

puts c1.perimetro === 16 ? 'Es 16' : 'Error'
puts c1.area === 16 ? 'Es 16' : 'Error'

puts r1.perimetro === 18 ? 'Es 18' : 'Error'
puts r1.area === 20 ? 'Es 20' : 'Error'
