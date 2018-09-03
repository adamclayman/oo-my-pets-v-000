class Cat
  attr_accessor :mood
  attr_reader :name

  def initialize(name, mood = "Nervous")
    @name = name
    @mood = mood
  end
end
