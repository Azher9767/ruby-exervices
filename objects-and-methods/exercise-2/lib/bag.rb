class Bag

  attr_reader :candies
  def initialize
    @candies =[]
  end

  def empty?
    @candies.empty?
  end

  def candies 
    @candies
  end

  def count
    @candies.count
  end 

  def << (candy)
    @candies << candy
  end

  def contains?(name)
    @candies.any? {|candy| candy.type == name}
  end

  def grab(type)
    x = @candies.find { |x| x.type == type }
    @candies.delete(x)
    x
  end

  def take(number)
    if number == 1
      return @candies.last
    else
      @candies.shift(number)
    end

    
  end
end