def binary_to_decimal
  binary = []
  8.times do 
    binary << rand(0..1) 
  end
  puts "Your randomly generated binary number is: #{binary}"

  new_binary = binary.reverse

  decimal = 0
  n = 0 
  new_binary.each do |i|
    decimal += i * 2 ** n
    n += 1
  end
  puts "Your binary number is now converted to decimal number: #{decimal}!"
end

def array_equals(array1, array2)
  if array1.length == array2.length 
    y = 0
    array1.each_with_index do |x, index|
      if x == array2[index]
        y += 1
      end
    end
    if y == array1.length
      return true
    end
    return false
  end
  return false
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
