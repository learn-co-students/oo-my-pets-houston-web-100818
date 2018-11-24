class Cat

  attr_reader :name, :mood
  #attr_accessor 
  
  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def mood=(state)
    @mood = state
  end

  
end