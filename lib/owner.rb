require 'pry'
require_relative './cat'
require_relative './dog'
require_relative './fish'

class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    self.name = name
    @species = "human"
    self.pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood= "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood= "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood= "happy"
    end
  end

  def sell_pets
    self.pets[:dogs].each do |dog|
      dog.mood= "nervous"
    end
    self.pets[:cats].each do |cat|
      cat.mood= "nervous"
    end
    self.pets[:fishes].each do |fish|
      fish.mood= "nervous"
    end
    self.pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end

end

# robert = Owner.new("Robert")
# robert.buy_dog("Tito")
# puts robert.list_pets
