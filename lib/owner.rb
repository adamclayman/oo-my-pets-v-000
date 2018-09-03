class Owner
  attr_accessor :pets
  attr_reader :species
  @@owners = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@owners << self
  end

  def self.all
    @@owners
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
