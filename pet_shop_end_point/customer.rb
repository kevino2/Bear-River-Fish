class Customer

  attr_reader :name, :cash

  def initialize(name, cash)
    @name = name
    @cash = cash
    @pets = []
  end

  def pet_count()
    return @pets.size()
  end

  def add_pet(pet)
    @pets.push(pet)
  end

  def get_total_of_pets()
    total = 0
    for pet in @pets
      total += pet.price
    end
    return total
  end

  def buy_pet(name, shop)
    pet = shop.find_by_name(name)
    if (pet != nil && @cash >= pet.price)
      shop.sell_pet(pet)
      add_pet(pet)
    end
  end

end
