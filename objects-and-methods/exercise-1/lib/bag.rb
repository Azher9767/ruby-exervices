class Bag
  #attr_accessor :candies
  def initialize
    @candies = []
  end

  def empty? 
   @candies.empty? 
  end

  def count
    @candies.count
  end

  def candies
    @candies 
  end

  def <<(candy)
    @candies << candy
  end

  def contains?(name)
    @candies.any? {|candy| candy.type == name}
  end
  
  # def totat_count
  #   total = []
  #   total += @candies 
    
  # end
end
