# 1. Write a method named `binary_to_decimal` that creates an array of size 8.
#    Fill the array randomly with 0’s and 1’s. Print out the array so that it
#    appears as a binary number. Calculate the decimal value for this binary
#    number using the algorithm you devised in class. Print out the decimal value.
def binary_to_decimal
  # populates an array with 8 random elements of either 0's or 1's
  binary_array = []
  8.times do
    binary_array << Random.rand(2)
  end

  # creates a string representation of the binary number
  binary_string = ""
  binary_array.each do |num|
    binary_string += "#{num}"
  end
  print "the binary number is " + binary_string

  # decimal_sum will be equivalent to final decimal value for the binary number
  # starting at the last element of the array (index[-1]),
  # if the value is equal to 1, then 2^e (starting at 0) is added to the decimal_sum
  decimal_sum = 0
  e = 0
  i = -1
  binary_array.length.times do
    if binary_array[i] == 1
      decimal_sum += 2**e
    end
    i -= 1
    e += 1
  end
  print "\nthe decimal value is " + decimal_sum.to_s + "\n"
end

# 2. Write a method named `array_equals` that accepts two integer arrays as
#    parameters. The method return `true` if the arrays contain the same elements
#    in the same order, and returns `false` otherwise.
# Note: Do not use Array class methods for comparing the whole array at once.
#       You may use array indexing to retrieve one element at a time,
#       compare individual elements with each other and
#       you may retrieve the length of an array.
def array_equals(array1, array2)
  #if the arrays are different lengths, will return false
  if array1.length != array2.length
    return false
  end

  # compares each element of array, starting at index[0]
  # if they are not equivalent at any point, then it will return false
  # else it will return true when completed 
  x = 0
  array1.length.times do
    if array1[x] != array2[x]
      return false
    end
    x += 1
  end
  return true
end # => end of array_equals

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
