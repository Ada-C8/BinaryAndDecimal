# 1. Write a method named `binary_to_decimal` that creates an array of size 8.
#    Fill the array randomly with 0’s and 1’s. Print out the array so that it
#    appears as a binary number. Calculate the decimal value for this binary
#    number using the algorithm you devised in class. Print out the decimal value.
def binary_to_decimal
  num_array = []
  8.times do |i|
    num = rand(0..1)
    num_array << num
  end
  puts num_array.join("")

  # binary_number = id_num_array.split(",").map {|i| i.to_i}
  # print "the ind_num_array is: #{ind_num_array}"
  # ind_num_array = binary_array.each_char.map(&:to_i)
  decimal_array = []
  num_array.reverse.each_with_index do |num1, index|
    new_num = num1 * 2**index
    # puts "new_num is #{new_num}"
    decimal_array << new_num
  end
  decimal_value = decimal_array.inject(0){|sum,x| sum + x }
  puts decimal_value
  # return "the decimal value is #{decimal_value}"
  # puts "Not implemented"
end


# 2. Write a method named `array_equals` that accepts two integer arrays as
#    parameters. The method return `true` if the arrays contain the same elements
#    in the same order, and returns `false` otherwise.
# Note: Do not use Array class methods for comparing the whole array at once.
#       You may use array indexing to retrieve one element at a time,
#       compare individual elements with each other and
#       you may retrieve the length of an array.

def array_equals(array_one, array_two)
  if array_one.length == array_two.length
    array_one.each_with_index do |num, i|
      until num == array_two[i]
        return false
      end
    end
  end
end
        #       puts "num: #{num}"
        #       puts "array2 num #{array_two[i]}"
        #       return true
        #     end
        #   end
        # else
#         return false
#       end
#     end
#   end
# end

    # --- END OF METHODS ---
    puts "Calling binary_to_decimal"
    binary_to_decimal

    puts "Calling array_equals"
    array1 = [10, 20, 30, 40, 50, 60]
    array2 = [10, 20, 30, 40, 50, 60]
    if !array_equals(array1, array2) # both equal case
      puts "BUG1: array_equals should return true."
      print array1
      print array2
    else
      puts "Great!"
    end

    array3 = [10, 20, 30, 40, 50, 60, 70] # not equal: first 6 elements same
    if array_equals(array1, array3)
      puts "BUG2: array_equals should return false."
      print array1
      print array3
    else
      puts "Great!"
    end

    array4 = [20, 3, 50, 10, 68, 74] # not equal: same count case
    if array_equals(array1, array4)
      puts "BUG3: array_equals should return false."
      print array1
      print array4
    else
      puts "Great!"
    end

    array5 = []
    array6 = []
    if !array_equals(array5, array6) # equal: empty array case
      puts "BUG4: array_equals should return true."
      print array5
      print array6
    else
      puts "great!"
    end

    array7 = [20]
    if array_equals(array4, array7) # not equal: one element, multiple elements case
      puts "BUG5: array_equals should return false."
      print array4
      print array7
    else
      puts "great"
    end

    if array_equals(array5, array7) # not equal: one empty, one not case
      puts "BUG6: array_equals should return false."
      print array5
      print array7
    else
      puts "great"
    end
