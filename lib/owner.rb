class Owner
  :owners

  def initialize
    @@owners << self
  end

  def self.all
    OWNERS
  end

  def self.reset

  end
end
