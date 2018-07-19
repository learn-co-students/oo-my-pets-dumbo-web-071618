class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []


  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.reset_all
    @@all.clear
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

end
