require 'pry'
#i'm trying to create a class of cat, which will have a name and the ability to change it's mood. the name will not be changed by the cat so it should be a reader or "setter" method. While the mood is modifiable internally not externally so it will be put in the attr_reader primer, but manipulated in an attr_writer method.
class Cat
  attr_reader :name, :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def mood=(emotion)
    @mood = emotion
  end


end
