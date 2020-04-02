class Dog
  # code goes here
    attr_accessor :mood, :owner
    attr_reader :name
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
  end
  
end