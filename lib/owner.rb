class Owner
  attr_accessor :pets, :species

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
  end

  def buy_cat(name)
    new_pet = Cat.new(name)
    pets[:cats] << new_pet
  end

  def buy_dog(name)
    new_pet = Dog.new(name)
    pets[:dogs] << new_pet
  end

  def buy_fish(name)
    new_pet = Fish.new(name)
    pets[:fishes] << new_pet
  end
end
