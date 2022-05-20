=begin

PROBLEM:

Input: Octal string
Output: Decimal output

Rules/Requirements
Decimal is a base 10 system
Octal is a base 8 system
Implement the conversion yourself (don't use built in Ruby methods)
Treat invalid input as octal 0
  Invalid input is any input that is not a string digit between 0 and 7

Questions:
What is considered invalid input?
any non digit character
digits: 8 and 9

For example:

`12345` is a valid input
'123hhe' is not a valid input

------------------
EXAMPLES:
  233 # decimal
= 2*10^2 + 3*10^1 + 3*10^0
= 2*100  + 3*10   + 3*1

------
  233 # octal
= 2*8^2 + 3*8^1 + 3*8^0
= 2*64  + 3*8   + 3*1
= 128   + 24    + 3
= 155

------------------
DATA STRUCTURES:

---

ALGORITHM:
Create a class called Octal
Each instance takes one argument: a string digit

== to_decimal method ==
Create a guard clause for validating input

Convert input string into an array of digits
Create a variable multipler and set to 1
Create an empty array called results
Loop through digits array
  at each iteration:
    multiply multipler by current digit
    move result to results array
    reassign multipler to multipler * 8

  Add together all elements in results array
  Return sum
=end

class Octal
  def initialize(digit)
    @digit = digit
  end

  def to_decimal
    return 0 if invalid_input?(@digit)

    digits_arr = @digit.to_i.digits
    multipler = 1
    results = []

    digits_arr.each do |number|
      results << number * multipler
      multipler *= 8
    end
    results.sum
  end

  def invalid_input?(string)
    string.chars.any? { |char| char =~ /[^0-7]/ }
  end
end
