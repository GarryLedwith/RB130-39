=begin

PROBLEM: 

Write a program that takes a word and a list of possible anagrams and selects the correct sublist that contains the anagrams of the word.

For example, given the word "listen" and a list of candidates like "enlists", "google", "inlets", and "banana", the program should return a list containing "inlets". Please read the test suite for the exact rules of anagrams.


Input: string 
Output: array of anagrams 


Rules/Requirements 
- An anagram is a word or phrase formed by rearragning the letters of a different word or phrase 
- write a program that takes a word (string) and a list of possible anagrams (array) and select the corrent sublist that contains the anagram of the word 
- if no anagrams are found then return an empty array 
  - Else return an array of sorted anagrams 
- remove any duplicates in annagram array 
- 



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
- create a hash called results with the key as a sorted word an array as the value 
- loop through input array and pass in each word to the block
if key equals the current word 
  then add word to value of results hash
elsif 



=== match method ==== 
takes an array as an argument 
 

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