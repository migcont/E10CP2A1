
# Se pide:
# Agregar un método de instancia llámado lados en ambas clases. El método debe imprimir un string con las medidas de los lados.
# Crear un módulo llamado Formula.
# Dentro del módulo Formula crear un método llamado perimetro que reciba dos argumentos (lados) y devuelva el perímetro.
# Dentro del módulo Formula crear un método llamado area que reciba dos argumentos (lados) y devuelva el área.
# Implementar -mediante Mixin- el módulo en las clases Rectangulo y Cuadrado.
# Instanciar un Rectangulo y un Cuadrado.
# Imprimir el área y perímetro de los objetos instanciados utilizando el método del módulo implementado.

module Formula

  def perimetro
    lado1 = self_variable_get(self_variable_get[0])
    if self.instance_variable.count == 1
      4 * lado1
    else
      lado2 = self_variable_get(self_variable_get[1])
      2 * lado2
  end

  def area
      lado1 = self_variable_get(self_variable_get[0])
          if self.instance_variable.count == 1
            lado1 ** 2
  end
end

class Rectangulo
  include Formula
  def initialize(base, altura)
    @base = base
    @altura = altura
  end
end

class Cuadrado
  include Formula
  def initialize(lado)
    @lado = lado
  end
end

c1 = Cuadrado.new(4)
c2 = Rectangulo.new(4,5)

puts c1.perimetro == 16 ? 'es 16' : 'error'
puts c2.area == 16 ? 'es 16' : 'error'

#puts r1.perimetro === 18 ? 'es 18' : 'error'
#puts r2.area === 20? 'es 20' : 'error'
