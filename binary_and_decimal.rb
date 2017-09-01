# # 1. Write a method named `binary_to_decimal` that creates an array of size 8.
# #    Fill the array randomly with 0’s and 1’s. Print out the array so that it
# #    appears as a binary number. Calculate the decimal value for this binary
# #    number using the algorithm you devised in class. Print out the decimal value.
#
def binary_to_decimal
  binary_num = Array.new(8) {rand(0..1)}
  # print binary_num
  decimal_total = 0
  binary_num.each_with_index do |num, i|
    if num == 1
      decimal_total += 2**i
    end
  end
  #  puts "The binary number #{binary_num} = #{decimal_total}."
  return decimal_total
end



# 2. Write a method named `array_equals` that accepts two integer arrays as
#    parameters. The method return `true` if the arrays contain the same elements
#    in the same order, and returns `false` otherwise.
# Note: Do not use Array class methods for comparing the whole array at once.
#       You may use array indexing to retrieve one element at a time,
#       compare individual elements with each other and
#       you may retrieve the length of an array.

#2a Check the length of array 1 and array 2 to determine if the length are equal not
# If the lengths are not equal, select the length of the shortest array
# Check the number of the array at the same index and compare the values
# If the value at each index is the same return true, if not return false
# Store the boolean value in result array


def array_equals(array1, array2)
  [array1.length, array2.length].min.times do |i|
    if array1[i] != array2[i]
    return false
    end
  end
end

# --- END OF METHODS ---
# puts "Calling binary_to_decimal"
# binary_to_decimal

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
