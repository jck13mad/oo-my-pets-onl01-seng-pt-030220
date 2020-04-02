class Owner
  # code goes here
  attr_accessor :name, :pets, :dog, :cat 
  attr_reader :species
  
  @@all = []
  @pets = {:cats => [], :dogs => []}
  
  def initialize(species)
    @species = species
    @name = name
    @@all << self
    @pets = {:cats => [], :dogs => []}
  end
  
  def pets
    @@pets = pets
  end
  
  def buy_cat(cat)
    @@pets[:cats] << Cat.new(cat)
  end
  
  def buy_dog(dog)
    @@pets[:dog] << Dog.new(dog)
  end
  
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  
  def self.all
    @@all
  end
  
  
  def self.reset_all
    @@all.clear
  end
  
  def self.count
    @@all.size 
  end
  
  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
  
  
end