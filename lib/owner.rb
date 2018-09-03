class Owner
  @@owners = []
  
  def initialize
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end
end
