# 1. Write a method named `binary_to_decimal` that creates an array of size 8.
#    Fill the array randomly with 0’s and 1’s. Print out the array so that it
#    appears as a binary number. Calculate the decimal value for this binary
#    number using the algorithm you devised in class. Print out the decimal value.
def binary_to_decimal
  binary = []
  8.times do
    binary << rand(0..1)
  end

  binary_num = binary.join('')

  reversed_binary = binary.reverse
  exponent = 0
  decimal = 0
  reversed_binary.each do |num|
    d = num*(2 ** exponent)
    decimal += d
    # puts "the exponent at #{num} is #{exponent}"
    exponent += 1
  end
  return "The binary number #{binary_num} coverts to decimal number #{decimal}."
end

# 2. Write a method named `array_equals` that accepts two integer arrays as
#    parameters. The method return `true` if the arrays contain the same elements
#    in the same order, and returns `false` otherwise.
# Note: Do not use Array class methods for comparing the whole array at once.
#       You may use array indexing to retrieve one element at a time,
#       compare individual elements with each other and
#       you may retrieve the length of an array.
def array_equals(array1, array2)
  # I nested lines 36-42 because some of the arrays had different numbers
  # of elements and wanted to account for the difference.
  if array1.length == array2.length
    array1.each_index do |index|
      if array1.values_at(index) == array2.values_at(index)
        return true
      else
        return false
      end # if/else
    end # each_index loop
  else
    # I am unsure why the "return puts" code works on line 44. I tried
    # assigning the 'Make sure ...' string to a variable and then returning
    # the variable which did not work.
    return puts "Make sure your arrays have the same number of elements."
  end # if/else
end # method
 # --- END OF METHODS ---
puts
puts "Calling binary_to_decimal"
puts binary_to_decimal
puts
puts "Calling array_equals"
array1 = [10, 20, 30, 40, 50, 60]
array2 = [10, 20, 30, 40, 50, 60]
# puts array_equals(array1, array3)

if !array_equals(array1, array2) # both equal case
  puts "BUG: array_equals should return true."
  print array1
  print array2
end
puts "end of 1"

array3 = [10, 20, 30, 40, 50, 60, 70] # not equal: first 6 elements same
if array_equals(array1, array3)
  puts "BUG: array_equals should return false."
  print array1
  print array3
end
puts "end of 2"

array4 = [20, 3, 50, 10, 68, 74] # not equal: same count case
if array_equals(array1, array4)
  puts "BUG: array_equals should return false."
  print array1
  print array4
end
puts "end of 3"

array5 = []
array6 = []
if !array_equals(array5, array6) # equal: empty array case
  puts "BUG: array_equals should return true."
  print array5
  print array6
end
puts "end of 4"

array7 = [20]
if array_equals(array4, array7) # not equal: one element, multiple elements case
  puts "BUG: array_equals should return false."
  print array4
  print array7
end
puts "end of 5"

if array_equals(array5, array7) # not equal: one empty, one not case
  puts "BUG: array_equals should return false."
  print array5
  print array7
end
puts "end of 6"
