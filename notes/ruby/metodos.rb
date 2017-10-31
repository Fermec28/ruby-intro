require 'pry'

def say_hello_to_person?(name, height = 31, blah)
  # Guard Clause
  return "chao" if name == "Maduro"
  "Hola como estas"
end


def times_two!(arr)
  arr.each.with_index do |num, index|
    arr[index] = num * 2
  end
end



#

arr = [2,1,3]
dup = arr

# NO destructivos
 = arr.sort

p dup
p arr

# Destructivos
arr.sort!

p arr



saludo = say_hello_to_person("Juan", 27, 'balha', 'bli', 'blu', 4123, [42314,4234], false)

p saludo

# Metodos

# Es un porcion de codigo reutilizable
  # Recibe un inputs
  # Devuelve un output


# inputs = [1,1,3,3,2,5]

# output --> {1=>2, 3=>2, 2=>1, 5=>1}
# Definicion
# def frequencies(array, num = nil, *rest) # Arity de un metodo 2
#   array.reduce({}) {|memo, num| memo[num] ? memo[num] += 1 : memo[num] = 1; memo}
# end


# # Invocacion
# puts frequencies(inputs)
# frequencies([1,22,3])
# frequencies(1,2,3,4)


# Imperativo
# Declarativo











