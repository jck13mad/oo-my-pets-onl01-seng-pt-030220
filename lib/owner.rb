class Owner
  # code goes here
  attr_reader :species, :name
  
  @@all_owners = []
  
  def initialize(name)
    @species = "human"
    @name = name
    @@all_owners << self
  end
  
  def say_species
    "I am a #{self.species}"
  end
  
  def self.all
    @@all_owners
  end
  
  def self.count
    self.all.length
  end
  
  def cats
    Cat.all.select do |kitties|
      kitties.owner == self
    end
  end
  
  def dogs
    Dog.all.select do |doggies|
      doggies.owner == self
    end
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end
  
  def walk_dogs
    self.dogs.each do {|doge| doge.mood = "happy"}
  end
  
  def feed_cats
    self.cats.each do {|cate| cate.mood = "happy"}
  end
  
  def sell_pets
    pets = self.cats.push(*self.dogs)
    
    pets.each do |pet|
      pet.mood = "nervous"
      
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