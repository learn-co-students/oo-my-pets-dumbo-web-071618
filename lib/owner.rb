require 'pry'
require_relative 'fish.rb'
# Here i'm trying to create a human who is capable of acquiring pets and talking about pets in the same way that a human would. it's almost to complex to write here with out writing  paragraphs. So i'll comment specifics on the methods below.
class Owner
attr_reader :species, :name
attr_accessor :pets

@@human = []
  def initialize(species)
  @species = species
  @pets = {fishes: [], dogs: [], cats: []}
  @@human << self
  end

  def self.all
   @@human
  end

  def self.count
    @@human.length
  end

  def self.reset_all
    @@human.clear
  end
  def say_species
   return "I am a #{@species}."
  end

  def name=(name)
    @name = name
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
    # I want to make the new instance of my fish be a value of the fishes key. so i simply shovel it in there. my fish needs a name so i allow buy fish to take in an argument of a name, while allowing my new fish to take in that same arguement.
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end


  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood=("happy")}
    #i want to walk all the dogs stored in the value of the key :dogs and i want to reflect that walking them makes them happy. To do this I iterate over each dog and use the attr_writer method to change their mood to happy whenever they are walked! i.e. the walk_dogs method is called.
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood=("happy")}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood=("happy")}
  end

  def sell_pets                        # I want this method to sell my owner's pets and
    @pets.each do |pet, specific_pets| # make the pet nervous. To do this i need to
    specific_pets.each do |animal|     # iterate over @pets which represents our hash of
      animal.mood=("nervous")          # pets, so that i can get down to the specific
    end                                # animals and change their moods to nervous. AND!
      specific_pets.clear              # i need to clear out the arrays to represent the
    end                                # pets being sold.
  end


  def list_pets
    return "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
    #this was simpler than i expected .length returns how many values are in the arrays so to count or "list" all i had to do was call .length on the array that represented the specific animal i wanted to list
  end

  pets = {fishes: [], dogs: [], cats: []}

#   def list_pets
#     testing = @pets.each do |pet_key, pet_value|
#       pet_value << pet_value.size
#     end
# # the above is iterating over the @pets hash, and shoveling the abstract concept of the size of the specific pet array, which makes it physical i.e. a value i can take from the end the array
#     "I have #{testing[:fishes].last} fish, #{testing[:dogs][-1]} dog(s), and #{testing[:cats].reverse.first} cat(s)."
#   end
# end
