class Owner
	# code goes here
	attr_reader :name,:species
	attr_accessor :pets

	@@all = []
	@@count = 0

	def initialize(name)
		@name = name
		@species = "human"
		@pets = {:fishes => [], :dogs => [], :cats => []}

		@@all << self
		@@count += 1
	end

	def self.all
		@@all
	end

	def self.reset_all
		@@all = []
		@@count = 0
	end

	def self.count
		@@all.count
	end

	def say_species 
		"I am a #{@species}."
	end

	def name=(name)
		@name = name
	end

	def buy_fish fish_name
		@pets[:fishes] << Fish.new(fish_name)
	end

	def buy_cat cat_name
		@pets[:cats] << Cat.new(cat_name)
	end

	def buy_dog dog_name
		@pets[:dogs] << Dog.new(dog_name)
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
		@pets.each do |species,collection|
			collection.each do |pet|
				pet.mood = "nervous"
			end
		end

		@pets = {:fishes => [], :dogs => [], :cats => []}

	end

	def list_pets 
		"I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
	end

end