# 1. Write a method named `binary_to_decimal` that creates an array of size 8.
#    Fill the array randomly with 0’s and 1’s. Print out the array so that it
#    appears as a binary number. Calculate the decimal value for this binary
#    number using the algorithm you devised in class. Print out the decimal value.
def binary_to_decimal
  binary_array = []
  8.times do 
	binary_array << rand(0..1)
  end
  
  sum = 0
  power_index = 0
  
  binary_array.reverse.each do |i|
	if i == 1
		sum += 2**power_index
	end
	power_index += 1
  end
	
	front = binary_array[0..3].join
	back = binary_array[4..7].join
	
	puts "Binary: #{front} #{back}"
	puts "Decimal: #{sum}"
end

def array_equals(array1, array2)
	if array1.length != array2.length 
		return false
	else
		index = 0
		array1.each do |i|
			if array1[index] != array2[index]
				return false
			else
				index += 1
			end
		end
	end
	return true
end

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
