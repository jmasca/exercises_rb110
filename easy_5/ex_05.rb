# ex_05.rb
system "clear"
# --------------------------------------------------------------------------- #
# my solution: attempt 3: using regexp #

def cleanup(text)
  text.gsub(/[^a-z]/, " ").squeeze(" ")
end

puts cleanup("---what's my +*& line?")
puts cleanup("---what's my +*& line?") == ' what s my line '

# NOTE: I would need to get clarification on whether or not a new string is
#       being returned, or if we're simply modifying the original.

# --------------------------------------------------------------------------- #
=begin
# my solution: attempt 2 #

ALPHABET = ('a'..'z')

def cleanup(text)
  clean_str = ''

  text.each_char do |char|
    if ALPHABET.include?(char)
      clean_str << char
    else
      clean_str << ' ' unless clean_str[-1] == ' '
    end
  end
  clean_str
end

puts cleanup("---what's my +*& line?")
puts cleanup("---what's my +*& line?") == ' what s my line '
=end
# --------------------------------------------------------------------------- #
=begin
# my solution: attempt 1 #

def remove_extra_spaces(char_arr)
  previous_char = ''

  char_arr.select do |char|
    result = true
    result = false if char == ' ' && previous_char == ' '
    previous_char = char
    result
  end
end

def cleanup(mixed_str)
  cleaned_chars = mixed_str.chars.map do |char|
                ('a'..'z').include?(char) ? char : " "
              end
  remove_extra_spaces(cleaned_chars).join
end

puts cleanup("---what's my +*& line?")
puts cleanup("---what's my +*& line?") == ' what s my line '
=end
# --------------------------------------------------------------------------- #