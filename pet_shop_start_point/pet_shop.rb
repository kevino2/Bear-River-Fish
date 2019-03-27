class PetShop

    attr_reader :name, :cash, :pets_sold

    def initialize (name, pets, cash)
      @name = name
      @pets = pets
      @cash = cash
      @pets_sold = 0
    end

    def stock_count()
      return @pets.size()
    end

    def add_pet(pet)
      @pets.push(pet)
    end

    def find_by_name(name)
      for pet in @pets
    if pet.name == name
      return pet
        end
      end
    return nil
    end

    def sell_pet()
      @pets.delete(pet)
      increase_pets_sold()
    end

    def increase_pets_sold()
      @pets_sold += 1
    end

end
