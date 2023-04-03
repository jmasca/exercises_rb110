# ex_10.rb
system "clear"
# --------------------------------------------------------------------------- #

# my solution:

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

a = "thank you"
p a
p a.object_id

b = spin_me(a)
p b
p b.object_id

# the spin_me method will return a new object because the method reverse!
# (which is destructive) is being called on the strings in the array that was
# created by the split method, rather than being called directly on the string
# that was passed into the spin_me method.
