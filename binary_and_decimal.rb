# 1. Write a method named `binary_to_decimal` that creates an array of size 8.
#    Fill the array randomly with 0’s and 1’s.
#Print out the array so that it appears as a binary number. Calculate the decimal value for this binary
#    number using the algorithm you devised in class. Print out the decimal value.

def binary_to_decimal
  binary_array = Array.new
  multiples = [128, 64, 32, 16, 8, 4, 2, 1]

  8.times do
    binary_array << rand(0..1)
  end #generate number

  decimal_number = 0
  binary_array.each_with_index do |digit, index|
    decimal_number += (digit * multiples[index])
  end #iterate over array

return "#{binary_array.join} is #{decimal_number}"
end


#
# 2. Write a method named `array_equals` that accepts two integer arrays as
#    parameters. The method return `true` if the arrays contain the same elements
#    in the same order, and returns `false` otherwise.
# Note: Do not use Array class methods for comparing the whole array at once.
#       You may use array indexing to retrieve one element at a time,
#       compare individual elements with each other and
#       you may retrieve the length of an array.
def array_equals(array1, array2)
  max = array1.length
  puts "Length of array is #{max}"
  if max != array2.length
    puts "Arrays are not equal"
    return false
  else
    max.times do |i|
      if array1[i] != array2[i]
        puts "#{array1[i]} does not equal #{array2[i]}"
        return false
      end  #inner if statement
      puts "#{array1[i]} equals #{array2[i]}"
    end #max times do
    return true
  end #inner if statement
end #array_equals method
#
# # --- END OF METHODS ---
puts "Calling binary_to_decimal"
binary_to_decimal

10.times do
  puts binary_to_decimal
end

puts "Calling array_equals"
puts "Arrays should be equal: "
array1 = [10, 20, 30, 40, 50, 60]
array2 = [10, 20, 30, 40, 50, 60]
if !array_equals(array1, array2) # both equal case
  puts "BUG: array_equals should return true."
  print array1
  print array2
end

puts "\n\nArray 3 is longer, so should be not equal:"
array3 = [10, 20, 30, 40, 50, 60, 70] # not equal: first 6 elements same
if array_equals(array1, array3)
  puts "BUG: array_equals should return false."
  print array1
  print array3
end

puts "\n\nArray 4, same count, different numbers"
array4 = [20, 3, 50, 10, 68, 74] # not equal: same count case
if array_equals(array1, array4)
  puts "BUG: array_equals should return false."
  print array1
  print array4
end

puts "\n\nArray's empty:"
array5 = []
array6 = []
if !array_equals(array5, array6) # equal: empty array case
  puts "BUG: array_equals should return true."
  print array5
  print array6
end

puts "\n\nNot equal by one element: "
array7 = [20]
if array_equals(array4, array7) # not equal: one element, multiple elements case
  puts "BUG: array_equals should return false."
  print array4
  print array7
end

puts "\n\nnot equal one empty/one not:"
if array_equals(array5, array7) # not equal: one empty, one not case
  puts "BUG: array_equals should return false."
  print array5
  print array7
end
