class TrickOrTreater
  attr_accessor :bag
  def initialize(costume)
    @bag = Bag.new
    @costume = costume
  end
 
  def dressed_up_as
    @costume.style
  end

  # def bag
  #   @bag = Bag.new
  # end
  def has_candy?
    if @bag == nil
      return false 
    else
      !@bag.candies.empty?
    end
  end

  def candy_count
    if @bag == nil
      return 0
    else
    @bag.candies.count
    end
  end
  
  def eat 
    @bag.candies.pop
  end
end