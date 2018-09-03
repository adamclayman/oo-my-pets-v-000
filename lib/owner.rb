class Owner
  OWNERS = []

  def initialize
    OWNERS << self
  end

  def self.all
    OWNERS
  end

  def self.reset_all
    OWNERS.clear
  end
end
