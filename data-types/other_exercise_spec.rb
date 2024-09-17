#date 06/01/2024

RSpec.describe "Array practice" do
  let(:color) { ["Red", "Green", "Blue", "White"] }

  specify do
    expect(color.include?"Green").to eq(true)
  end

  specify { expect(color.exclude?("pink")).to eq(true) }
end

#=====================================================================================
#  Write a Ruby program to check whether 7 appears as either the first or last element in a #given array. The array length must be 1 or more.

array = [1,2,3,4,6,6,7,8,]
print array.include?7
puts
array1 = [1,2,3,4,5,66,7,8,9,7,8,]
print array1.include?555

#=====================================================================================
#  Write a Ruby program to pick number of random elements from a given array.

array1 = [12, 33, 34, 23, 56]
      # single element fromm the array
print array1.sample

      # 2 random element from the array 
 print array1.sample(2)
 
     # 3 random element from the array 
 print array1.sample(3)

 #=====================================================================================
 
# Write a Ruby program to check whether first and the last element are the same of
# a given array of integers. 
# The array length must be 1 or more.
# pout false, true, false


def arr(array1)
  if array1[0] == array1[-1]
    return true 
  else 
    return false 
  end 
end 

print arr([6,2,3,4,"azhar",nil, 6])

#========================================================================================
#  Write a Ruby program to compute the sum of elements in a given array. expected 12(integer)

array1 = [12, 34, 23, 56]
sum = 0 
array1.each do |x|
  sum += x
end
print sum

#=========================================================================================

# Write a Ruby program to remove duplicate elements from a given array.
#Sample Output: [1, 2, 3, 4, 5, 6]


array1 = [1, 2, 3, 4, 1, 2, 2, 3, 5, 6]
print array1.uniq # it will change the array temprory

print array1.uniq! # by using ! mark we can change the original array, or we can say it will return new array

#==========================================================================================

=begin   Write a Ruby program to check two given arrays of integers and test whether 
they have the same first element or they have the same last element.
Both arrays length must be 1 or more.
Sample Output:
true
false
true
=end

def diff(array1, array2)
  if array1[0] == array2[0] && array1[-1] == array2[-1]
    return true 
  else 
    return false
  end
end 
puts diff([2,3,4,5,6,1,2,3,1,8], [2,5,3,4,6,4,5,6,5,4,6,5,4,56,5,5,8])
puts diff([3,4,5,3], [4,5,6,7,3])
puts diff([2], [2]) 

#=========================================================================================

#.   Write a Ruby program to compute the sum of all the elements. The array length must be 3 or more.

def array(nums)
   return (nums[0] + nums[1] + nums[2])
end

print array([1, 2, 5]),"\n" 
print array([1, 2, 3]),"\n" 
print array([1, 2, 4]) 

#=========================================================================================

# Write a Ruby program to split a delimited string into an array.


color = "Red, Green, Blue, White"

nums = "1, 3, 4, 5, 7"
color_arr = color.split(",")
print color_arr,"\n"
nums_arr = nums.split(",").map {|x|x.to_i}
print nums_arr

#=========================================================================================
#  Write a Ruby program to create an array with the elements "rotated left" 
#of a given array of ints length 3.
def array(num)
  rotated = num[2], num[1], num[0]
	return rotated
end
print array([1, 2, 5]),"\n" 
print array([1, 2, 3]),"\n" 
print array([1, 2, 4]) 

#===========================================================================================
# Write a Ruby program to find the larger between the first and last elements of a given array of integers of length 3. 
 # Replace all the other values to be that value. Return the changed array.
 def array(nums)
   max = []
   max[0] = nums[0]
	 if(nums[2] >= max[0])
	   max[0] = nums[2]
	   max[1] = max[0]
	   max[2] = max[0]
	 end
	 return max
 end
print array([1, 2, 5]),"\n" 
print array([1, 2, 3]),"\n" 
print array([1, 2, 4])  

#==========================================================================================
# Write a Ruby program to compute the sum of the first 2 elements of a given array of integers. If the array length is less than 2, 
#just sum up the elements that exist, returning 0 if the length of the array is 0.


def sum(arr)
  sum = 0
  arr.each do |x|
    if x == arr[0] || x == arr[1]
      sum  = sum + x 
    end
  end
  return sum
end
  
print sum([3,6,4])


     # ======  OR =========

def array(arr)
  if(arr.length >= 2)
    return (arr[0] + arr[1])
  end
  if(arr.length == 1)
    return arr[0]
  end
  return 0
end
puts array([1, 2, 5])
puts array([4, 2, 3]) 
puts array([1]) 
puts array([0])

#=================================================================================

#  Write a Ruby program to check whether a given array of integers of length 2 
# contains a 4 or a 7.
def check(array)
  if array[0] == 4 || array[1] == 7
    return true
  end 
  return array[0] == 4 || array[1] == 7
    
end
print check([9,7])
puts
puts check([8,90])

#==================================================================================

#  Write a Ruby program to check whether a given array of integers contains
# 3 twice, or 5 twice. The array will be length 0, 1, or 2.

def check_array(nums)
  if(nums.length == 2)
    if(nums[0] == 3 && nums[1] == 3)
      return true
    else
		  return (nums[0] == 5 && nums[1] == 5)
		end
	  return false
	end
end
print check_array([3, 3]),"\n" 
print check_array([3, 6]),"\n" 
print check_array([5, 9]),"\n" 
print check_array([5, 5]),"\n"   
print check_array([8, 9])

#============================================================================================

#  Write a Ruby program to compute the sum of two arrays (length 3) 
# and return the array which has the largest sum.

def check(a, b)
  sum = ( a[0] + a[1] + a[2]) - ( b[0] + b[1] + b[2] )
	if(sum >= 0)
		return a
	end
	return b
end
print check([1, 3, 5], [2, 4, 4])
puts
print  check([11, 3, 5], [21, 0, -4])

#===========================================================================================


# expected [1,2,3,4,5,6,7,8,9,10,11,12] 
h = { 
  a: [ ["c", "1"],["d","2"],["e","3"],["f","4"] ], 
  b: [ ["g","5"],["h","6"],["i","7"],["j","8"] ], 
  c: [ ["k","9"],["l","10"],["m","11"],["n","12"] ]}
h1 = h.values.flatten(1).map!{|x,y| y.to_i}
print h1

#===============================================================================================
# Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in 
# select method to gather only siblings' names into a new array.
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
  
          imm_family = family.select do |k, v|
            k == :sisters || k == :brothers
          end
          
          arr = imm_family.values.flatten
          
          print  arr 
 #====================================================================================================

  # # Using some of Ruby's built-in Hash methods, write a program that loops through a hash 
# and prints all of the keys. Then write a program that does the same thing except printing
# the values. Finally, write a program that prints both.
opposites = {positive: "negative", up: "down", right: "left"}

opposites.each_key { |key| puts key }
opposites.each_value { |value| puts value }
opposites.each { |key, value| puts "The opposite of #{key} is #{value}" } 

#====================================================================================================
# Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? 
#rite a program that uses both and illustrate the differences.

cat = {name: "whiskers"}
weight = {weight: "10 lbs"}
puts cat.merge(weight)
puts cat                  
puts weight              
puts cat.merge!(weight)
puts cat                  
puts weight       

#========================================================================================================









