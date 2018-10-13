class Owner
 attr_accessor :pets, :all, :name, :mood
 attr_reader :species
 
  
  @@all = []
  
  def initialize(name)
    @@all << self
    @species = "human"
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
  end 

  def buy_cat(name)
    name = Cat.new(name)
    @pets[:cats] << self 
  end 

  def buy_fish(name)
    name = Fish.new(name)
    @pets[:fishes] << self 
  end 

  def self.all
    @@all
  end 

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end 

  def say_species
    "I am a #{@species}."
  end 

  def buy_fish(name)
    name = Fish.new(name) 
    @pets[:fishes] << name
  end 

  def buy_cat(name)
    name =  Cat.new(name) 
    @pets[:cats] << name
  end 

  def buy_dog(name)
    name = Dog.new(name) 
    @pets[:dogs] << name
  end 

  def walk_dogs
    @pets[:dogs].each do |one_dog|
      one_dog.mood = "happy"
    end
  end 

  def play_with_cats
    @pets[:cats].each do |one_cat|
      one_cat.mood = "happy"
    end 
  end

  def feed_fish
    @pets[:fishes].each do |one_fish|
      one_fish.mood = "happy"
    end 
  end 

  def sell_pets
    @pets.each do |specie, array_of_pets|
      array_of_pets.each do |one_pet|
        one_pet.mood = "nervous"
      end 
      array_of_pets.clear
      end
  end 

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end 
end