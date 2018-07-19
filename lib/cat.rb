class Cat
  # code goes here
  # attr_accessor
  # attr_writer
  # attr_reader
  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

end
