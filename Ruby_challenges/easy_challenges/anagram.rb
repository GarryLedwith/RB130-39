=begin

PROBLEM:
Input: string
Output: array of anagrams

Rules/Requirements
- An anagram is a word or phrase formed by
rearragning the letters of a different word or phrases
- write a program that takes a word
(string) and a list of possible anagrams (array)
and select the corrent sublist that contains the anagram of the word
- if no anagrams are found then return an empty array
  - Else return an array of sorted anagrams
- remove any duplicates in annagram array

Questions:
How to I deal with case?
Does 'Corn' == 'corn'?
Case does not matter
------------------
EXAMPLES:

"listen" == 'silent'

------------------
DATA STRUCTURES:
String
Array

---

ALGORITHM:

=> Goal: Return an array with a list of anagrams

=> Steps:

== anagrams method ====
- method takes two arguments: a string and an array
- create a hash called results with the key as a sorted word
and array as the value
- loop through input array and pass in each word to the block
if key equals the current word
  then add word to value of results hash
end
return array of anagrams

=== match method ====
takes an array as an argument
call anagrams method to test if arrays match

=== sorted_letters ===
takes string as arguement
lowercase string
convert into an array of chars
sort, and convert back to string
=end

class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(arr)
    anagrams(@word, arr)
  end

  private

  def sorted_letters(str)
    str.downcase.chars.sort.join
  end

  def anagrams(str, arr)
    results = Hash.new([])
    key = sorted_letters(str)

    arr.each do |word|
      if sorted_letters(word) == key
        results[key] << word
      end
    end
    results[key].reject { |word| word.downcase == str }
  end
end
