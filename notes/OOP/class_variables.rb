class Dad
  @@things = ['sofa', 'car', 'tv']

  def initialize
  end

  # Getter de @@things
  def self.things
    @@things
  end
end

class Child < Dad
  @@things = ['juguetes']

  # Getter de @@things
  def self.things
    @@things
  end
end

p Dad.things #=> [Dad, Object] // ['sofa', 'car', 'tv']
p Child.things #=> [Child, Dad, Object] // ['juguetes']
