# Ciclos
  # - Iteradores
  # - Loops

i=0

loop do
  i += 1
  print "#{i}"
  break if i==10
end


i=0

loop do
  i+=1
  next if i== 10
  print "#{i} "
  break if i==10
end

i=0
while i < 11
  print "#{i} "
  i+=1
end


i=1
until i > 10
  print "#{i} "
  i+=1
end

# Iteradores

for i in ['hola', 'como', 'estas']
  print "#{i} "
end

for value in [1,2,3,4,5,6,7,8,9,10]
  print "#{value} "
end

10.times do |i|
  print "#{i} "
end

pet_names = ['ozu', 'mara', 'polo', 'athos', 'haku']

pet_names.size.times do |i|
  puts "El nombre de la mascota es #{pet_names[i]}"
end

pet_names.each do |name|
  puts "El nombre de la mascota es #{name}"
end

pepito = {
  "nombre" => 'pepito',
  "apellido" => 'hernandez',
  age: 28,
  height: 12.324,
  alive: true,
  childrens: ['maria', 'josefina']
}


pepito.each do |key, value|
  puts key
  puts value
end

# Iteraciones o loops

# while <--- loop
# EACH <--- iteraciones
# loop <--- loop
# times <--- loop
# MAP <--- iteraciones
# nums.each { |num| puts num }

# nums.each do |num|
#   puts num
# end

# nums = [1,2,3,4,5,6]
# nums_times_two = []

# nums.each do |num|
#   nums_times_two << (num *  2)
# end

# nums_times_two = nums.map do |num|
#   num * 2
# end

# puts nums_times_two
# num = 1

# while num < 5
#   puts "blah #{num}"
#   num += 1
# end


# 10.times do
#   puts 'fasdfas'
# end

# (5...10).each do |num|
# end

# nums = [1,2,3,4,4,4] #Input
# sum = 0 # Output

# nums.each do |num|
#   sum = sum + num
# end

# nums.reduce(0) do |sum, num|
#   sum += num
#   sum
# end

# nums.reduce(0) {|sum,num| sum += num}


# persona = {name: 'juan', age: 2342, color: 'blue'}

# persona.each do |key, value|

# end


# # nums_times_two = [2,4,6,4,10,12]
# # nums[2]
# # nums[2]
# # nums.each {|num| nums_times_two = nums[num*2]; binding.pry}

# # puts nums_times_two


# # nums.each do |num|
# #   nums_times_two = [num * 2]
# # end


nums = [1,2,3,4]

nums.each.with_index do |elem, index|
  nums[index]
end




mult = nums.map do |element|
  element * 2
end

odds = []

nums.each do |num|
  odds << num if num.odd?
end

odds = nums.filter { |num| num.odd? }

sum = 0

nums.each do |num|
  sum += num
end

sum = nums.reduce(0) do |accu, num|
  accu += num
end


  accu, num, return
1.  0    1     1
2.  1,   2     3
3.  3,   3,    6
4.  6,   4,    10

odds = nums.reduce({}) do |accu, num|
  if num.odd
    accu << num
  else
    accu
  end
end

nums = [1,1,1,1,3,3,3,4,5,64,65,56,46,4,23,4,324,1]
{odds: 0, evens: 0}
{1: 4, 3: 3}

frequencies = nums.reduce({odds: 0, evens: 0}) do |hash, value|
  if value.even?
    hash[:evens] += 1
  else
    hash[:odds] = hash[:odds] + 1
  end
  hash
end


nums = [1,1,1,1,2,2,3]

histogram = nums.reduce({}) do |accu, num|
  if accu[num]
    accu[num] = 1
  else
    accu[num] += 1
  end
  accu
end

  accu, num , result
1. {},  1, {1 => 1}


def odds_and_evens(arr)
  arr.reduce({odds: 0, evens: 0}) do |memo, num|
    num.even? ? memo[:evens] += 1 : memo[:odds] += 1
    memo
  end
end

def histogram(arr)
  arr.reduce({}) do |memo, num|
    memo[num] ? memo[num] += 1 : memo[num] = 1
    memo
  end
end



  accu, num, return
1. []    1     [1]
2. [1],  2     [1]
3. [1],   3,    [1,3]
4.  [1,3] ,   4, [1,3]

puts mult















