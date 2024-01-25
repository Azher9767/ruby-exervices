class TrickOrTreater
  attr_accessor :bag

  def initialize(costume)
    @bag = Bag.new
    @costume = costume
  end
 
  def dressed_up_as
    @costume.style
  end

  def has_candy?
    return false if @bag.nil?
    
    !@bag.candies.empty?
  end

  def candy_count
    return 0 if @bag.nil?
    
    @bag.candies.count
  end
  
  def eat 
    @bag.candies.pop
  end
end
