class River

  attr_accessor :name, :fish_population
#
  def initialize(name, fish_population)
    @name = name
    @fish_population = []
  end

  def remove_fish(fish)
    @fish_population.delete(fish)
  end

  def fish_count()
    @fish_population.count
  end

end
