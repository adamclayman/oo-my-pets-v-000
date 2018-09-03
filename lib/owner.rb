class Owner
  attr_accessor :pets, :name
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

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
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

  def feed_fish
    pets[:fishes] = pets[:fishes].map {|fish| fish.mood = "happy"}
  end

  def play_with_cats
    pets[:cats] = pets[:cats].map {|cat| cat.mood = "happy"}
  end

  def say_species
    puts self.species
  end

  def walk_dogs
    pets[:dogs] = pets[:dogs].map {|dog| dog.mood = "happy"}
  end


end
