# 1. Write a method named `binary_to_decimal` that creates an array of size 8. Fill the array randomly with 0’s and 1’s. Print out the array so that it appears as a binary number. Calculate the decimal value for this binary number using the algorithm you devised in class. Print out the decimal value.
def binary_to_decimal
  binary = 0
  array = Array.new(8) { rand(0..1) }
  puts array.join
  array.each_with_index do |num, i|
    binary += num * 2 ** (array.length - 1 - i)
  end
  return binary
end

# 2. Write a method named `array_equals` that accepts two integer arrays as parameters. The method return `true` if the arrays contain the same elements in the same order, and returns `false` otherwise. Note: Do not use Array class methods for comparing the whole array at once.
#You may use array indexing to retrieve one element at a time, compare individual elements with each other and you may retrieve the length of an array.
def array_equals(array1, array2)
  if array1.length == array2.length
    length = 0
    array1.each_with_index do |num, i|
      if num == array2[i]
        length += 1
      end
    end
    if length == array1.length
      return true
    end
    return false
  end
  return false
end #end of method

# --- END OF METHODS ---
puts "Calling binary_to_decimal"
binary_to_decimal

puts "Calling array_equals"
array1 = [10, 20, 30, 40, 50, 60]
array2 = [10, 20, 30, 40, 50, 60]
if !array_equals(array1, array2) # both equal case
  puts "BUG 1: array_equals should return true."
  print array1
  print array2
end

array3 = [10, 20, 30, 40, 50, 60, 70] # not equal: first 6 elements same
if array_equals(array1, array3)
  puts "BUG 2: array_equals should return false."
  print array1
  print array3
end

array4 = [20, 3, 50, 10, 68, 74] # not equal: same count case
if array_equals(array1, array4)
  puts "BUG 3: array_equals should return false."
  print array1
  print array4
end

array5 = []
array6 = []
if !array_equals(array5, array6) # equal: empty array case
  puts "BUG 4: array_equals should return true."
  print array5
  print array6
end

array7 = [20]
if array_equals(array4, array7) # not equal: one element, multiple elements case
  puts "BUG 5: array_equals should return false."
  print array4
  print array7
end

if array_equals(array5, array7) # not equal: one empty, one not case
  puts "BUG 6: array_equals should return false."
  print array5
  print array7
end
