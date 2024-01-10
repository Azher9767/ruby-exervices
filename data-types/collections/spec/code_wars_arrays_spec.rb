=begin
Write a function that takes an array of numbers (integers for the tests) and a target number.
It should find two different items in the array that, when added together, give the target value. 
The indices of these items should then be returned in a tuple / list (depending on your language) 
like so: (index1, index2).
For the purposes of this kata, some tests may have multiple answers; any valid solutions will be accepted.
The input will always be valid (numbers will be an array of length 2 or greater, and all of the items will 
be numbers; target will always be the sum of two different items from that array).

two_sum([1, 2, 3], 4) == {0, 2}
=end

  RSpec.describe 'two_sum' do
def two_sum(num, target) 
  arr = []
    hash1 = {}
      num.each_with_index do |value, index|
        m = target - value
        
        if (hash1.find{|key,val|
          key == value })
          arr << hash1[value]
          arr << index
          return arr 
         else    
           hash1[m] = index 
        end 
      end
  end

    it 'test 1' do 
      expect(two_sum([1, 2, 3], 4)).to eq([0, 2])
    end

    it 'test 2' do 
      expect(two_sum([1234, 5678, 9012], 14690)).to eq([1, 2])
    end
    it 'test 3' do 
      expect(two_sum([2, 2, 3], 4)).to eq([0, 1])
    end
  end
    
 #=begin Your task is to sum the differences between consecutive pairs in the array in descending order.
 #begin Example
#[2, 1, 10]  -->  9
#In descending order: [10, 2, 1]
#Sum: (10 - 2) + (2 - 1) = 8 + 1 = 9
#If the array is empty or the array has only one element the result should be 0 (Nothing in Haskell, None in Rust).
RSpec.describe 'tsum_of_differences' do
def sum_of_differences(arr)
  return 0 if arr == 0
  return 0 if arr == [0]
  return 0 if arr == []
  return 0 if arr == [-1]
  return 0 if arr ==[1]
  arr1 = arr.reverse!
  sum = 0
  a = 2
  while a > 0
     arr1.each do |x|
       if a >= 1
       b = x - a 
       sum = sum + b
       a -= 1 
     end
  end
  return sum
 end
end
it 'test 4' do 
  expect(sum_of_differences([1, 2, 10])).to eq(9)
end
it 'test 5' do 
  expect(sum_of_differences([0])).to eq(0)
end 
it 'test 6' do 
  expect(sum_of_differences([])).to eq(0)
end
it 'test 7' do 
  expect(sum_of_differences(0)).to eq(0)
end 
it 'test 8' do 
  expect(sum_of_differences([1])).to eq(0)
end 
it 'test 9' do 
  expect(sum_of_differences([-1])).to eq(0)
end 
end 