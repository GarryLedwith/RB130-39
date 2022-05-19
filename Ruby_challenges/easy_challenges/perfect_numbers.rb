=begin

PROBLEM:

Input: Integer
Output: String

Rules/Requirements
Compare the input number and the sum of its divisors

Perfect numbers have an Aliquot sum that is equal to the original number.

Abundant numbers have an Aliquot sum that is greater than the original number.

Deficient numbers have an Aliquot sum that is less than the original number.

A divisor is a number that can be evenly divied into the target number
with no remainder, excluding the number itself.

Questions:
What is a natural number?
Is 0 considered a natural number in this problem?
How do I handle 0 and negative numbers?

------------------
EXAMPLES:

6 is a perfect number since its divisors are 1, 2, and 3, and 1 + 2 + 3 = 6.

28 is a perfect number since its divisors are 1, 2, 4, 7, and 14 an

Prime numbers 7, 13, etc. are always deficient since their only divisor is 1.
------------------
DATA STRUCTURES:
Array
---

ALGORITHM:

=> Goal: Determine if an input number is abundant, perfect or deficinet,
and return a string of same names depending on input number

=> Steps:

Create a class called PerfectNumber
== Classify method ==
raise an error if input number is less than 0
takes an integer as an argument
create a range from 1 upto input integer
select all divisors of input integer
place them in an array and sum array and save to a variable called sum

if sum is equal to input integer
  return perfect
elsif sum greater than input integer
  abundant
else deficient
end
=end

class PerfectNumber
  def self.classify(number)
    raise StandardError, "Not a natural number" if number <= 0
    sum = (1...number).select { |num| number % num == 0 }.sum

    if sum > number
      'abundant'
    elsif sum < number
      'deficient'
    else
      'perfect'
    end
  end
end
