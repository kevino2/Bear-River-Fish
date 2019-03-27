class Bear

  attr_reader :name, :breed, :eaten

  def initialize(name, breed)
    @name = name
    @breed = breed
    @eaten = []

  end

  def bear_eats_fish(river, fish)
    @eaten.push(fish)
    river.remove_fish(fish)
  end

  def bear_roar()
    return "ROAR!"
  end

  def food_count(eaten)
    @eaten.count()
  end

end
