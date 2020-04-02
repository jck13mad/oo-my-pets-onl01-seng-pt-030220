class Dog
  # code goes here
    attr_accessor :mood, :owner
    attr_reader :name
    
    @@all = []
  
  def initialize(name, owner)
    @owner = owner
    @mood = "nervous"
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end