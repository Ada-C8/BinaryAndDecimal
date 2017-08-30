# 1. Write a method named `binary_to_decimal` that creates an array of size 8.
#    Fill the array randomly with 0’s and 1’s. Print out the array so that it
#    appears as a binary number. Calculate the decimal value for this binary
#    number using the algorithm you devised in class. Print out the decimal value.


# def decimal_to_binary
#   puts "What decimal number would you like to convert to binary?"
#   number = gets.chomp.to_i
#   result = number.to_s(2)
#  puts "The decimal number #{number} = #{result} in binary."
# end

# def binary_to_decimal
#   puts "What binary number would you like to convert to decimal?"
#   number = gets.chomp
#   result = 0

#   numberofdigits = number.to_s.length
#   digits = number.to_s.split("")

#   for i in 0..digits.length
#     a = digits.length - i
#     if digits[a] == "1"
#       if i == 0
#         result = result + 1
#       else
#       result = result + 2**(i-1)
#     end
#   end
# end

# puts "The binary number #{number} = #{result}."
# end

# puts "1. Binary to Decimal"
# puts "2. Decimal to Binary"
# input = gets.chomp
# if input.include? "1"
#  binary_to_decimal
# else
#   decimal_to_binary
# end





def binary_to_decimal
  puts "Not implemented"
end

# 2. Write a method named `array_equals` that accepts two integer arrays as
#    parameters. The method return `true` if the arrays contain the same elements
#    in the same order, and returns `false` otherwise.
# Note: Do not use Array class methods for comparing the whole array at once.
#       You may use array indexing to retrieve one element at a time,
#       compare individual elements with each other and
#       you may retrieve the length of an array.
def array_equals(array1, array2)
  puts "Not implemented"
  return true
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
