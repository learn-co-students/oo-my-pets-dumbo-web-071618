require 'pry'

class Dog
  attr_reader :name, :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def mood=(emotion)
    @mood = emotion
  end


end
