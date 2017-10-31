require 'pry'

# Math::PI => 3.1416


class Animal


  attr_reader :alive
  def initialize(name, alive)
    @name = name
    @alive = alive
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end

  def name2
    @name + 'soy yo'
  end

  def activity
    if self.hunter_or_not?
      "Voy de caza"
    else
      "Corro"
    end
  end

  protected

    def hunter_or_not?
      @alive
    end
end

cocodrilo = Animal.new('Alf', true)
cocodrilo.name = 'Pocho'

binding.pry
cocodrilo.hunter_or_not?


# class Dog < Animal
#   include Swimable

#   def initialize(name, alive, lung_capacity)
#     super(alive)
#     @name = name
#     @lung_capacity = lung_capacity
#   end
# end

# class Cat < Animal
#   def initialize(name)
#     @name = name
#   end
# end

# class Fish < Animal
#   include Swimable # Esto lo incluye como metodos de instancia
#   include Huntable

#   # Esto lo inlcuye como metodos de clase

#   # Named Arguments
#   def initialize(options)
#     @name = options[:name]
#     @spines = options.fetch(:spines) { true  }
#     @species = options[:species]
#     @lung_capacity = options[:lung_capacity] || 10
#     self.swimming_speed = options[:swimming_speed]
#   end
# end



# module Swimable
#   def swimming
#     'Splshhhhhs'
#   end

#   def time_under_water
#     @lung_capacity * 0.8 * 3600
#   end

#   def swimming_speed=(speed)
#     @swimming_speed = speed
#   end

#   def swimming_speed
#     @swimming_speed
#   end
# end


# # Namespace


# tobias = Dog.new('tobias', true, 2)
# garfield = Cat.new('Garfield')
# nemo = Fish.new({name: 'Nemo', species: 'Clown Fish', swimming_speed: 100})
# eel = Fish.new({name: 'electrica', species: 'eel', swimming_speed: 100, spines: false})

# nemo.time_under_water => 23542353425


# Fish.time_under_water


