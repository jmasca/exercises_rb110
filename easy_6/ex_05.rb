# ex_05.rb
system "clear"
# --------------------------------------------------------------------------- #

# this is my original solution
=begin
def reverse(arr)
  neg_idx = 0
  arr.map do
    neg_idx -= 1
    arr[neg_idx]
  end
end
=end
# --------------------------------------------------------------------------- #

# using the inject method and :prepend
# this is a technnique from another solution that is incredible!

def reverse(arr)
  arr.inject([], :prepend)
end

# --------------------------------------------------------------------------- #

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true
p 
p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
