def binary_to_decimal
  binary = Array.new(8) { rand(0..1) }
  puts "Your binary list is: #{binary}"
  total = 0
  exp = 0
  binary.reverse.each do |i|
    total += i * 2 ** exp
    exp += 1
  end
  puts "Your decimal value is: #{total}"
end

###

def array_equals(array_1, array_2)
  if array_1.length == array_2.length
    # RUN BLOCK ONLY IF THE LENGTHS ARE THE SAME
    array_1.each_with_index do |value, i|
      # COMPARES INDEX VALUES OF EACH ARRAY
      if value != array_2[i]
        return false
      end
    end
    return true # OUTSIDE OF LOOP TO RETURN ANYTHING NOT FALSE
  else
    return false # RETURN FALSE IF ARRAYS ARE NOT THE SAME LENGTH
  end
end


# --- END OF METHODS ---
puts "Calling binary_to_decimal"
binary_to_decimal

puts "Calling array_equals"
array_1 = [10, 20, 30, 40, 50, 60]
array_2 = [10, 20, 30, 40, 50, 60]
if !array_equals(array_1, array_2) # both equal case
  puts "BUG: array_equals should return true."
  print array_1
  print array_2
end

array_3 = [10, 20, 30, 40, 50, 60, 70] # not equal: first 6 elements same
if array_equals(array_1, array_3)
  puts "BUG: array_equals should return false."
  print array_1
  print array_3
end

array_4 = [20, 3, 50, 10, 68, 74] # not equal: same count case
if array_equals(array_1, array_4)
  puts "BUG: array_equals should return false."
  print array_1
  print array_4
end

array_5 = []
array_6 = []
if !array_equals(array_5, array_6) # equal: empty array case
  puts "BUG: array_equals should return true."
  print array_5
  print array_6
end

array_7 = [20]
if array_equals(array_4, array_7) # not equal: one element, multiple elements case
  puts "BUG: array_equals should return false."
  print array_4
  print array_7
end

if array_equals(array_5, array_7) # not equal: one empty, one not case
  puts "BUG: array_equals should return false."
  print array_5
  print array_7
end
