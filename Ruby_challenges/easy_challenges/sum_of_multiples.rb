=begin

PROBLEM:

Input: Integer(s)
Output: Integer

Rules/Requirements
Problem only uses natural numbers
Takes one number and a possible set of numbers as an input
Find the sum of all teh multiples of the numbers in the set
  that are less than the first number
If no set of numbers is given then use 3 and 5 as a default
If input number is 1 or 2 and no set is given then return 0

Questions:
Is zero considered a natural number in this problem?
some instances of the Sum class take 3 arguments
  while others only take 2, so how do I deal with this?

------------------
EXAMPLES:
Input: 4
Set of numbers: not given
Use default: 3 and 5
[3] add all elements in array => 3

Input: 10
Set of numbers: not given
Use default: 3 and 5

[3, 5, 6, 9] => 23

Input: 20
Set of numbers: 7, 13, 17

[7, 13, 14, 17] => 51

------------------
DATA STRUCTURES:
Array

---

ALGORITHM:
Create a class called SumOfMultiples
create a class method called `to`
create an instance method called `to`

== initialize constructor method ==
Takes 2 or 3 arguments (set numbers)
Set three paramets to default at 0
initialize ivars to num1, num2, num3

== `to` class method ==
Used 3 and 5 as default sets

create a range from 1 upto input integer
loop through range
 select any number that is a multiple of 3 and 5 in range
 add selected numbers to an array and then sum array
 return sum of array

== `to` instance method ==
create a range from 1 upto input integer
loop through range
 select any number that is a multiple of num1, num2, and num3 (ivars) in range
 add selected numbers to an array and then sum array
 return sum of array

=end

class SumOfMultiples
  def initialize(num1, num2, num3=0)
    @num1 = num1
    @num2 = num2
    @num3 = num3
  end

  def self.to(int)
    (1...int).select do |n|
      n % 3 == 0 || n % 5 == 0
    end.sum
  end

  def to(int)
    (1...int).select do |n|
      if @num3 == 0
        n % @num1 == 0 || n % @num2 == 0
      else
        n % @num1 == 0 || n % @num2 == 0 || n % @num3 == 0
      end
    end.sum
  end
end
