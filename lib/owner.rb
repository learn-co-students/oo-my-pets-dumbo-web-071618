require_relative 'cat.rb'
require_relative 'dog.rb'
require_relative 'fish.rb'

require 'pry'

class Owner
  # code goes here

  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize (species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
    @@all.count
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
    self.pets[:dogs].collect do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].collect do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].collect do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.collect do |animal_type, animal_collection|
      animal_collection.collect do |animal|
        animal.mood = "nervous"
      end
    end
    self.pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end

owner = Owner.new("Human")
owner.buy_cat("spots")
owner.buy_cat("cat")
owner.buy_cat("kitten")
owner.play_with_cats
owner.sell_pets
