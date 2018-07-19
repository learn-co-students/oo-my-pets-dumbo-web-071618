require "pry"

class Owner
  # code goes here
  #will be able to know its Pets
  #will be able to name pets
  #will be able to buy pet
  #change pets moods
  #sell pet as well
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(name)
    @@all << self
    @name = name
    @species = "human"
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    # binding.pry
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
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

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |pet, info|
      info.each do |animal|
        animal.mood = "nervous"
      end
    end
    @pets = {}

  end

  def list_pets
    new_pet_hash = @pets.each do |pet, pet_array|
      pet_array << pet_array.count
    end
    binding.pry

    "I have #{new_pet_hash[:fishes].last} fish, #{new_pet_hash[:dogs].last} dog(s), and #{new_pet_hash[:cats].last} cat(s)."
  end

end
