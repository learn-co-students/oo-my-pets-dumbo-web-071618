
# require_relative 'fish.rb'

class Owner
  attr_reader :species
  attr_accessor :owner, :name, :pets

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes=> [], :dogs=> [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.count
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(name)
    purchased_fish = Fish.new(name)
    @pets[:fishes] << purchased_fish
  end

  def buy_cat(name)
    purchased_cat = Cat.new(name)
    @pets[:cats] << purchased_cat
  end

  def buy_dog(name)
    purchased_dog = Dog.new(name)
    @pets[:dogs] << purchased_dog
  end

  def walk_dogs
    self.pets[:dogs].map {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].map {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].map {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.map do |type, pets|
      pets.map do |name|
          name.mood = "nervous"
      end
    end

    @pets = {}
  end

  def list_pets
    num_fishes = self.pets[:fishes].count
    num_dogs = self.pets[:dogs].count
    num_cats = self.pets[:cats].count
    return "I have #{num_fishes} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end

end
