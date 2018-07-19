class Fish
  # code goes here
  attr_reader :name,:mood 
  
  
  def initialize(name)
    @name = name
    @mood = "nervous"

  end 

  def mood=(value)
    @mood = value
  end 
end