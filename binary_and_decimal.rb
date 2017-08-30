# 1. Write a method named `binary_to_decimal` that creates an array of size 8.
#    Fill the array randomly with 0’s and 1’s. Print out the array so that it
#    appears as a binary number. Calculate the decimal value for this binary
#    number using the algorithm you devised in class. Print out the decimal value.


def binary_to_decimal
  #creates an array of 8 binary figures
  binary = Array.new(8){[0,1].sample}
  power = 0
  decimal = 0
  binary.reverse.each do |num|
    decimal += num * (2 ** power)
    power += 1
  end
  decimal
end

# 2. Write a method named `array_equals` that accepts two integer arrays as
#    parameters. The method return `true` if the arrays contain the same elements
#    in the same order, and returns `false` otherwise.
# Note: Do not use Array class methods for comparing the whole array at once.
#       You may use array indexing to retrieve one element at a time,
#       compare individual elements with each other and
#       you may retrieve the length of an array.
def array_equals(one, two)

  if one.length != two.length
    false
  else
      index = 0
    one.length.times do |compare|
      if one[index] == two[index]
        true
      else
        false
        exit
      end
      index += 1
    end
  end

  #   if one[-1..0] == two[-1..0] && one.length == two.length
  #     true
  #   else
  #     false
  #   end
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
