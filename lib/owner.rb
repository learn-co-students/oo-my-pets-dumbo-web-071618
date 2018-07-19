require 'pry'

class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets


  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
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

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
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
    self.pets[:dogs].select do |dog|
      if dog.mood != "happy"
        dog.mood = "happy"
      end
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      if cat.mood != "happy"
        cat.mood = "happy"
      end
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      if fish.mood != "happy"
        fish.mood = "happy"
      end
    end
  end

  def sell_pets
    self.pets.each do |species, details|
      details.each do |animal|
        animal.mood = "nervous"
      end
      self.pets[species] = []
    end
  end

  def list_pets
     "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end

end
