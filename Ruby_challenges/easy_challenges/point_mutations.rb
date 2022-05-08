=begin
PROBLEM:

Input: String
Output: Integer

Rules/Requirements
Calculate the hamming distace between two DNA strands
Mininium number of point mutations that occure between two strands
Return the mininium point number as an integer

Questions:

Are both strings the same length?
How do I handle empty strings?
How do handle if one string is longer or shorter?

------------------
EXAMPLES:

GAGCCTACTAACGGGAT
GAGCCTACTAACGGGAT
^ ^ ^  ^ ^    ^^

=> 7
------------------
DATA STRUCTURES:

String
Array

---

ALGORITHM:

=> Goal: return the mininium point number that occur as an integer

=> Steps:

Create a class called DNA
Each instance will take one argument (string)
save input to an instance variable called @strand

=== hamming_distance ===
create a variable called count and set it to 0
takes one string as an argument
convert instance variable str into an array of chars
convert dna_str into an array of chars
and save to a variable called new_strand_arr

loop through strand_arr using an index
  if the elemet in new_strand_arr is not equal to current element
    increment count by 1
  end
  break out of loop if any element equals 0
  return count
=end

class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(str)
    count = 0
    strand_arr = @strand.chars
    new_strand_arr = str.chars

    strand_arr.each_with_index do |ele, index|
      other_element = new_strand_arr[index]
      break if ele.nil? || other_element.nil?
      count += 1 if other_elemet != ele
    end
    count
  end
end
