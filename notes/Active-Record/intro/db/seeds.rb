
10.times do |i|
  Dog.create(name: Faker::name, age: rand(8) + 1, )
end
