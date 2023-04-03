# ex_08.rb
system "clear"
# --------------------------------------------------------------------------- #

# my solution: attempt 2 using LS solution as guidance:

NUMBERS_IN_ENGLISH = %w(zero one two three four five six seven
                        eight nine ten eleven twelve thirteen fourteen
                        fifteen sixteen seventeen eighteen nineteen)

# best option
def alphabetic_number_sort(num_arr)
  num_arr.sort_by { |num| NUMBERS_IN_ENGLISH[num] }
end

=begin
# further exploration (using sort instead of sort_by)
def alphabetic_number_sort(num_arr)
  num_arr.sort do |num_a, num_b|
    NUMBERS_IN_ENGLISH[num_a] <=> NUMBERS_IN_ENGLISH[num_b]
  end
end
=end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# --------------------------------------------------------------------------- #
=begin
# my solution: attempt 1:

def alphabetic_number_sort(num_arr)
  num_in_english = {
                      0 => 'zero', 1 => 'one',
                      2 => 'two', 3 => 'three',
                      4 => 'four', 5 => 'five',
                      6 => 'six', 7 => 'seven',
                      8 => 'eight', 9 => 'nine',
                      10 => 'ten', 11 => 'eleven',
                      12 => 'twelve', 13 => 'thirteen',
                      14 => 'fourteen', 15 => 'fifteen',
                      16 => 'sixteen', 17 => 'seventeen',
                      18 => 'eighteen', 19 => 'nineteen'
                    }

  num_arr.sort_by do |num|
    num_in_english[num]
  end
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
=end
# --------------------------------------------------------------------------- #
