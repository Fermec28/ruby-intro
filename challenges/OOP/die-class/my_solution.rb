# Pseudocode



# 1. Solucion Inicial
class Die

  attr_reader :sides

  def initialize (sides)
    raise ArgumentError.new("Un dado no puede contner esta cantidad de lados") if sides< 1 
    @sides=sides
  end

  def roll
    1+rand(@sides)
  end

end



# 2. Solucion con Refactor





###### DRIVER CODE #########
