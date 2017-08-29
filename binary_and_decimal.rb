# 1. Write a method named `binary_to_decimal` that creates an array of size 8.
require 'pry'
def binary_to_decimal
  binary = []
  8.times do
    binary << rand(0..1)
  end

  exponential_power = 0
  to_add = []
  binary.reverse!
  binary.each do |number|
    to_add << (number * (2 ** exponential_power))
    exponential_power += 1
  end

  puts to_add.sum
end


# # 2. Write a method named `array_equals` that accepts two integer arrays as parameters.
def array_equals(array_one, array_two)
  if array_one.length != array_two.length
    return false
  end

  index = 0
  matching_integers = 0
  array_one.each do |integer|
    if integer == array_two[index]
      matching_integers += 1
      index += 1
    end
  end
  if matching_integers == array_one.length
    return true
  else
    return false
  end
end


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
