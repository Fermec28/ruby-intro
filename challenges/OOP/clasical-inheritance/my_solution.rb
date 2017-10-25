module SuperPowers
  def lasereye
    "-----------"
  end

  def magicawings
    "3..3"
  end

  def superLengs
    "LzzzL   LzzzL"
  end
end

class Animal
  include SuperPowers
  def initialize (arg)
    @num_legs = arg[:legs]
    @num_eyes= arg[:eyes]
  end
end
class Mammal < Animal
  def initialize (arg)
    super (arg)
    @num_day_birth =arg[:days]
  end
end
class Amphibian < Animal
  def initialize (arg)
    super (arg)
    @swingorwalk = arg[:type]
  end
end
class Primate < Mammal
  def initialize (arg)
    super (arg)
    @have_hair=arg[:hair]
  end
end
class Frog  < Amphibian
  def initialize (arg)
    super (arg)
    @toxic = arg[:toxic]
  end
end
class Bat < Mammal
  def initialize (arg)
    super(arg)
    @kind_of_eat =arg[:type]
  end
end
class Chimpanzee < Primate
  def initialize (arg)
      super (arg)
      @know_signals=arg[:signal]
  end
end

chimpanzee = Chimpanzee.new({
  signal: true,
  hair: false,
  days: 900,
  legs:4,
  eyes:2
  })

    p chimpanzee.magicawings
