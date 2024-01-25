class Candy
  #attr_reader :name#
  attr_accessor :sugar, :type
  def initialize(type, sugar = 100)
    @type = type 
    @sugar = sugar
  end

  def type
    @type 
  end

  def sugar 
    @sugar
  end

  # def initialize(name)
  #   @name = name
  # end
end
