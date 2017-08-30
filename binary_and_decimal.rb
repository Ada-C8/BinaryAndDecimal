def binary_to_decimal
  bin = Array.new(8){rand(0..1)}

  reverse_bin = bin.reverse
  totes = 0
  reverse_bin.each_with_index do |digit, i|
     totes += digit * (2 ** i)
  end

  return "The binary ##{bin.join} equals the decimal ##{totes}"
end

def array_equals(array1, array2)
  if array1.length != array2.length
    return false
  end

  i = 0
  array1.each do |char|
    if char != array2[i]
      return false
    else
      return true # (if array contains the same elements in same order)
    end
  end
end
# --- END OF METHODS ---
puts "Calling binary_to_decimal"
puts binary_to_decimal
#####################
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
