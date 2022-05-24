=begin

PROBLEM:

Input: String of digits
Output: Nested array

Rules/Requirements
Takes string digits as an input
Return all possible consecutive number series (specified length)
Digit series must be less than or equal to string size
Otherwise throw an error
Each instance of Series class takes one argument: string digits
Create an instance method called `slices` that takes one argument: an integer
Check of Argument errors
Return value is a nested array
  Each sub array contains consecutive integers
  Each sub array size will be the size of integer passed into `slices`
If integer passed into `slices` is greater than the size of input string
 then return an ArgumentError

Questions:
Do I validate input?

------------------
EXAMPLES:
For example, the string "01234" has the following 3-digit series:

012
123
234

Likewise, here are the 4-digit series:

0123
1234

------------------
DATA STRUCTURES:
Array

---

ALGORITHM:
Create a class called Series
initialize method takes one parameter: string of digits

== valid_input? ==
Return true if all chars in input string are digits
else return false

== slices ==
Takes an integer as an argument
Raise Argument error if integer is greater than input string size
Initialize a variable results to an empty array
Initialize a variable temp_arr to an empty array

initialize a variable index and set  to 0
initialize a varialbe start_pos to 0
initialize a variable amount_of_chars to input int
convert input string into an array of integers called ints_arr
loop through ints_arr
    slice off sections of ints_arr
      staring at start_pos and slicing off amount_of_chars
       add integers to temp_arr
       add temp_arr to results
       empty temp_arr
       increment start_pos by 1

 return results array
=end

class Series
  def initialize(digits)
    @digits = digits
  end

  def valid?
    @digits.chars.all? { |n| n =~ /[0-9]/ }
  end

  # def slices(int)
  #   raise ArgumentError if int > @digits.size
  #   digits_arr = @digits.chars.map(&:to_i)
  #   results = []
  #   index = 0
  #   start_pos = 0
  #   amount_of_chars = int
  #   while index < digits_arr.size
  #     sub_arr = digits_arr[start_pos, amount_of_chars]
  #     results << sub_arr if sub_arr.size == int
  #     index += 1
  #     start_pos = index
  #   end
  #   results
  # end

  def slices(amount_of_chars)
    raise ArgumentError if amount_of_chars > @digits.size
    digits_arr = @digits.chars.map(&:to_i)
    results = []
    digits_arr.each_with_index do |_, index|
      sub_arr = digits_arr[index, amount_of_chars]
      results << sub_arr if sub_arr.size == amount_of_chars
    end
    results
  end
end
