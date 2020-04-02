class Owner
  # code goes here
  attr_reader :species, :name
  
  @@all = []
  @@pets = {:cats => [], :dogs => []}
  
  def initialize(name)
    @species = "human"
    @name = name
    @@all << self
  end
  
  def say_species
    @species
  
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
    @@pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    @@pets[:cats].each do |cat|
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