class Owner
  attr_accessor :pets
  
  def initialize
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def buy_cat(name)
    new_pet = Cat.new(name)
    pets << new_pet
  end
  
  def buy_dog(name)
    new_pet = Dog.new(name)
    pets << new_pet
  end
  
  def buy_fish(name)
    new_pet = Fish.new(name)
    pets << new_pet
  end
end
