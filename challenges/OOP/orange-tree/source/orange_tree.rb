# Esta es la forma en que se crean errores personalizados
class NoOrangesError < StandardError
end

class OrangeTree
  # Envejeze el arbol
  attr_reader :age, :height
  def initialize
    @age=0
    @oranges=[]
    @height=0
    @dead=false

  end
  def age!
    @age += 1
    @height += 0.16
    if @age>=3
      (rand(250)+1).times do
        @oranges << Orange.new(rand(15)+1)
      end
    end
    @dead=true if @age>25


  end

  # Devuelve true si hay naranjas en el arbol, false si no
  def any_oranges?
      @oranges.any?
  end

  def dead?
    @dead
  end
  # Devuelve una naranja si hay una
  # Dispara un NoOrangesError de lo contrario
  def pick_an_orange!
    raise NoOrangesError,  "This tree has no oranges" unless self.any_oranges?
    @oranges.pop
    # Logica para sacar naranjas va aca
  end #end pick_an_orange!
end ## end class OrangeTree

class Orange
  # Crea una naranja con determinado +diameter+
 attr_reader :diameter
  def initialize(diameter)
    @diameter=diameter
  end
end


######## DRIVER CODE ###########

tree = OrangeTree.new

tree.age! until tree.any_oranges?
puts "El arbol tiene #{tree.age} años y mide #{tree.height} metros"

until tree.dead?

  basket = []

  # Pone las naranjas en la canasta

  while tree.any_oranges?
    basket << tree.pick_an_orange!
  end


  avg_diameter = basket.map { |orange| orange.diameter}

  avg_diameter = avg_diameter.reduce(:+) / basket.length
  puts "Reposte Año #{tree.age}"
  puts "Altura arbol: #{tree.height} metros"
  puts "Cosecha: #{basket.size} naranjas con un diametro promedio de #{avg_diameter} cm"
  puts ""

  # Envejeze el arbol en 1 año
  #
  tree.age!
end
puts "Miercoles, se murio el arbol!"
