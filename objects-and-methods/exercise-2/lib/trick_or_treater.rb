require 'byebug'
class TrickOrTreater
  attr_accessor :bag, :sugar_level

  def initialize(costume)
    @costume = costume
    @bag = Bag.new
    @sugar_level = 0
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
  end

  def eat
    x = @bag.candies.pop
    @sugar_level += x.sugar
  end

  def sugar_level
    @sugar_level
  end
end
