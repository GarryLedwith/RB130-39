=begin

PROBLEM:

Input: Integer
Output: String

Rules/Requirements

Romans wrote numbers using letters:
I, V, X, L, C, D, M.
Romans didnt have use 0
Numbers shoud be less than equal to 3000
start at left and express each digit separately
skip any digit that equals 0
return an error if number if greater than 3000
------------------
EXAMPLES:
 I = 1
 II = 2
 III = 3
 IV = 4
 V = 5
 VI = 6
 VII = 7
 VIII = 8
 IX = 9
 X = 10

 XL = 40
 XC = 90
 CD = 400
 D = 500

 CDXLVIII = 448
    400 = CD
    40 = XL
    8 = VIII

M = 1000
MM = 2000
------------------
DATA STRUCTURES:
Array
Hash
---

ALGORITHM:

=> Goal: Convert a decimal number into its Roman number
   that is equivalent and return as a string

=> Steps:
Create a class called RomanNumerals
each object will take one argument: an integer
return error if input number is greater than 3000
create a hash called roman_numerals and set integers
as keys and corosponding roman numerals as values

create a helper method to break input digit into its place value within an array

=== place_value ===

Initialize a local variable multipler to the integer 1
create an empty array
convert input number into an array of digits
loop through digits array
  for each iteration
    multiply multipler by current number
    and move to results array
    reassign multipler to itself times 10
  end
  return results array

=== to_roman ===
create an empty string called roman_str
invoke place_value method and save return value to a local variable: numbers_arr
Loop through numbers array
  at each iteration:
   loop through ROMAN_NUMERALS hash and use num as key
   then move value to roman_str
    end
  end
  return roman_str

=end

class RomanNumeral
  ROMAN_NUMERALS = { 1 => 'I', 2 => 'II', 3 => 'III', 4 => 'IV',
                     5 => 'V', 6 => 'VI', 7 => 'VII', 8 => 'VIII',
                     9 => 'IX', 10 => 'X', 20 => 'XX', 30 => 'XXX',
                     40 => 'XL', 50 => 'L', 60 => 'LX', 70 => 'LXX',
                     90 => 'XC', 100 => 'C', 200 => 'CC',
                     300 => 'CCC', 400 => 'CD', 500 => 'D',
                     600 => 'DC', 700 => 'DCC', 800 => 'DCCC',
                     900 => 'CM', 1000 => 'M', 2000 => 'MM',
                     3000 => 'MMM' }

  def initialize(number)
    @number = number
  end

  def place_value(num)
    multipler = 1
    results = []
    num.digits.each do |number|
      results << number * multipler
      multipler *= 10
    end
    results.reverse
  end

  def to_roman
    roman_str = ''
    numbers_arr = place_value(@number)

    numbers_arr.each do |num|
      roman_str += ROMAN_NUMERALS[num] unless num == 0
    end
    roman_str
  end
end
