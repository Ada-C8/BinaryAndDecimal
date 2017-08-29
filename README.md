# Binary and Decimal
In this assignment you'll be composing two methods based on the description
below. Complete the method templates provided in binary_and_decimal.rb file.

## Exercises
1. Write a method named `binary_to_decimal` that creates an array of size 8.
   Fill the array randomly with 0’s and 1’s. Print out the array so that it
   appears as a binary number. Calculate the decimal value for this binary
   number using the algorithm you devised in class. Print out the decimal value.
2. This question has two parts:
   - <strong>Devise an algorithm</strong> Imagine you've been given two sets of integers. e.g. the first set is [30, 20, 10, 4] and the second set is [20, 10, 4]. Devise an algorithm that compares the two sets and returns true if the two sets have the same integers and in the same order, and returns false otherwise.
   - <strong>Author a method</strong> named `array_equals` that accepts two integer arrays as parameters (representative of the two sets). The method return `true` if the arrays contain the same elements in the same order, and returns `false` otherwise.
Note: Do not use Array class methods for comparing the whole array at once. You may use array indexing to retrieve one element at a time, compare individual elements with each other and you may retrieve the length of an array.
