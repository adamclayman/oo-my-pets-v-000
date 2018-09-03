class Owner

  def initialize
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.reset_all

  end
end
