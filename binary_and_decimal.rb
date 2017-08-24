# 1. Write a method named `binary_to_decimal` that creates an array of size 8.
#    Fill the array randomly with 0’s and 1’s. Print out the array so that it
#    appears as a binary number. Calculate the decimal value for this binary
#    number using the algorithm you devised in class. Print out the decimal value.
def binary_to_decimal
  #generate random binary number
  binary_number =[]
  8.times do
    binary_number << rand(0..1)
  end

  #calculate the the value of binary number in decimal numbers
  binary_number_reverse = binary_number.reverse

  index = 0
  sum = 0
  binary_number_reverse.each do |digit|
    if digit == 1
      sum += (2 ** index)
    end
    index +=1
  end

  #puts out data
  binary_format = "#{binary_number[0..3].join} #{binary_number[4..7].join}"
  puts "As binary number: #{binary_format}"
  puts "As decimal number: #{sum}"
end


#1. Check that the arrays are the same length.
# =>  a. If not, return false.
# => b. If so, continue with the instructions.
#2. Check that the first number in array 1 equals the first number in array 2.
# => a. If not, return false
# => b. If so, continue checking
# 3. Compare the next number in array 1 to the corresponding number in array 2.
# => a. if they are not equal, return false
# => b. if they are equal, continue checking
# 4. Repeat 3 until you have no more numbers to check.
# => a. if the last number in array 1 is not equal to the last number in ray 2,
# => return false.
# => b.If they are equal, return true
def array_equals(array1, array2)
  if array1.length == array2.length

    index =0
    array1.each do |item|
      if (array1[index] == array2[index])
        index += 1
      else #individual elements in the arrays are not equal
        return false
      end
    end

  else #arrays are not the same length
    return false
  end

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
