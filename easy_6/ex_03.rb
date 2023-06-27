# ex_03.rb
system "clear"
# --------------------------------------------------------------------------- #

# Practice Problem:
#   - Write a method that calculates and returns the index of the first
#     Fibonacci number that has the number of digits specified as an argument.
#     (The first Fibonacci number has index 1.)

# --------------------------------------------------------------------------- #

# --- (UNDERSTAND THE) PROBLEM --- #

#   - fiboncacci numbers:
#     - beginning with [1, 1], each consecutive number is a sum of the prev 2
#   - write a method:
#     - takes an integer representing the number of digits in a fibonacci num
#     - return the index of the first num that has the num of digits specified

#   input: integer (representing the number of digits to search for)
#   output: integer (representing the index being returned)

#   rules:
#     explicit: 
#       - argument always greater than or equal to 2
#       - return the FIRST number that meets the criteria
#       - the first fibonacci number is indexed at 1
#     implicit: 
#       - must be able to calculate fibonacci numbers
#       - must add 1 to the index of our answer

# --- EXAMPLES --- #
# find_fibonacci_index_by_length(2) == 7    # 1 1 2 3 5 8 13
# find_fibonacci_index_by_length(3) == 12   # 1 1 2 3 5 8 13 21 34 55 89 144
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847

# length(2)
# idx: 1 2 3 4 5 6 7 <-- add 1 to our index upon returning
# fib: 1 1 2 3 5 8 13

# --- DATA STRUCTURES --- #
#   - Integer (representing the number of digits to search for)
#   - Integer (representing the index to be returned (first to meet criteria))
#   - Array (holding the fibonacci numbers)

# --- ALGORITHM --- #

#   - fibonacci sequence -
#     - initialize an array to [1, 1] representing the first to nums
#     - add the last two numbers in the sequence
#     - push the result into the fib array
#   - break from the loop when the size of the last number is equal to
#       the number of digits specified in the argument
#   - return the size of the array to represent the index of the fib num

# --------------------------------------------------------------------------- #

# --- CODE --- #

def find_fibonacci_index_by_length(num_of_digits)
  fib_nums = [1, 1]
  loop do
    next_num = fib_nums[-1] + fib_nums[-2]
    fib_nums << next_num
    return fib_nums.size if fib_nums[-1].to_s.size == num_of_digits
  end
end

# --------------------------------------------------------------------------- #

puts find_fibonacci_index_by_length(3) == 12   # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
