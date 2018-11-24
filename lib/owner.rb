require 'pry'
class Owner
  
  attr_accessor :pets, :name
  @@all = [] #must set @@all equal to empty array for container

  def initialize(owner)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end


  def species
   @species
  end

  def say_species
    return "I am a #{species}."
  end

  def buy_fish(fish)
    #binding.pry
    pets[:fishes] << Fish.new("#{fish}")


  end

  def buy_cat(cat)
    pets[:cats] << Cat.new("#{cat}")
  end

  def buy_dog(dog)
    pets[:dogs] << Dog.new("#{dog}")
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
      pets.each do |type, val| 
        val.each do |pet| 
          pet.mood = "nervous"
        end 
      end
    self.pets.clear
  end

  def list_pets
    return "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end

