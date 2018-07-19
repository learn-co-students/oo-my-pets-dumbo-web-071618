class Owner

  attr_reader  :species
  attr_accessor :pets, :mood, :name

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog)
    new_dog = Dog.new(dog)
    @pets[:dogs] << new_dog
  end

  def buy_fish(fish)
    new_fish = Fish.new(fish)
    @pets[:fishes] << new_fish
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

  def walk_dogs
    self.pets[:dogs].each do |dog| dog.mood = "happy" end
  end

  def play_with_cats
    self.pets[:cats].each do |cat| cat.mood = "happy" end
  end

  def feed_fish
    self.pets[:fishes].each do |fish| fish.mood = "happy" end
  end

  def sell_pets

    @pets.each do |type, pet|
      pet.each do |stray| stray.mood = "nervous"
      end
    end
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end
end
