require 'pry'
## 1.
## Write a method named `binary_to_decimal` that creates an array of size 8.
## Fill the array randomly with 0’s and 1’s.
## Print out the array so that it appears as a binary number.
## Calculate the decimal value for this binary number using the algorithm you devised in class.
## Print out the decimal value.
def binary_to_decimal
  random_binary = []
  8.times do
    random_binary << rand(2)
  end
  binary = random_binary.join.to_i
  puts binary

  backwards = []
  random_binary.reverse.each_with_index do |digit, i|
    backwards << digit *= (2 ** i)
  end
  decimal = backwards.reduce(:+)
  puts decimal
end


# 2.
# Write a method named `array_equals` that accepts two integer arrays as parameters.
# The method return `true` if the arrays contain the same elements in the same order, and returns `false` otherwise.
# Note: Do not use Array class methods for comparing the whole array at once.
#       You may use array indexing to retrieve one element at a time,
#       compare individual elements with each other and
#       you may retrieve the length of an array.

def array_equals(array1, array2)
  return false if array1.length != array2.length

  array1.each_with_index do |int, i|
    return false if int != array2[i]
  end
  # return array1 == array2
end

# #longer, more written out method not using .length
# def array_equals(array1, array2)
#   count1 = 0
#   array1.each do
#     count1 += 1
#   end
#
#   count2 = 0
#   array2.each do
#     count2 += 1
#   end
#
#   return false if count1 != count2
#
#   count1.times do |i|
#     return false if array1[i] != array2[i]
#   end
#
# end

# --- END OF METHODS ---
puts "Calling binary_to_decimal"
binary_to_decimal

puts "Calling array_equals"
array1 = [10, 20, 30, 40, 50, 60]
array2 = [10, 20, 30, 40, 50, 60]
if !array_equals(array1, array2) # both equal case
  puts "BUG: array_equals should return true."
  print array1
  print array2
end

array3 = [10, 20, 30, 40, 50, 60, 70] # not equal: first 6 elements same
if array_equals(array1, array3)
  puts "BUG: array_equals should return false."
  print array1
  print array3
end

array4 = [20, 3, 50, 10, 68, 74] # not equal: same count case
if array_equals(array1, array4)
  puts "BUG: array_equals should return false."
  print array1
  print array4
end

array5 = []
array6 = []
if !array_equals(array5, array6) # equal: empty array case
  puts "BUG: array_equals should return true."
  print array5
  print array6
end

array7 = [20]
if array_equals(array4, array7) # not equal: one element, multiple elements case
  puts "BUG: array_equals should return false."
  print array4
  print array7
end

if array_equals(array5, array7) # not equal: one empty, one not case
  puts "BUG: array_equals should return false."
  print array5
  print array7
end
