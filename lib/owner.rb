require_relative 'fish.rb'
class Owner
  # code goes here
    attr_reader  :species, :name 
    attr_accessor :pets
 @@human  = []
 
 def initialize(species)
  @species = species 
  @pets = {fishes: [], cats: [], dogs: []}
  @@human << self 

 end 

def self.all
 

end 


def say_species
 return "I am a #{@species}."
end 

def name=(value)
  @name = value
end 

def self.all
 @@human
end 

def self.reset_all
  @@human.clear
 end 

def self.count
  @@human.length
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
 @pets.each do |key, value|
  value.each  do |ele|
    ele.mood = "nervous"
  end
 end 
 @pets = {}
end 

def list_pets
 return "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length } dog(s), and #{@pets[:cats].length} cat(s)."
end 





end