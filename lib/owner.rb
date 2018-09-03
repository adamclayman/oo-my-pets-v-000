class Owner
  OWNERS = []
  
  def initialize
    OWNERS << self
  end

  def self.reset
    
  end
end
