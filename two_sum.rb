# Two Sum
# Given two arguments, the first one being an array and the second argument being the target number.  Return true if any of the two numbers in the array can add up to the target number.
# Note all numbers in the array will be unique, integers, and non negative.
# e.g.
# 1.)  given `[1,3,5,7], 12` your function/method will return true since the number 5 + 7 = 12
# 2.) Example given `[2,3,4,5], 11` you function/method will return false since no two numbers would equal 11

def two_sum(integers, target) 
  # uncomment annotations below to accept non-unique integers
  numbers = Hash.new
  integers.each do |i|
    numbers[target - i] = 1   # + (numbers[target - i] || 0)
  end
  integers.any? do |i|
    numbers[i]                # and numbers[i] > (2 * i == target ? 1 : 0)
  end
end