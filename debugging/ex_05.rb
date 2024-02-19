system 'clear'
# debugging - exercise 5

#   We started working on a card game but got stuck.
#   Check out why the code below raises a TypeError.

#   Once you get the program to run and produce a sum, you might notice that
#     the sum is off: It's lower than it should be. Why is that?

=begin
given code:

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards,
         :diamonds => cards,
         :clubs    => cards,
         :spades   => cards }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  remaining_cards.map do |card|
    score(card)
  end

  sum += remaining_cards.sum
end

puts sum

=end

# SOLUTION #

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.clone,
         :diamonds => cards.clone,
         :clubs    => cards.clone,
         :spades   => cards.clone }   # each suit needs its own set of cards

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  remaining_cards.map! do |card|    # `map`'s return value needs to be assigned
    score(card)                     # to something or the destructive version
  end                               # needs to be used

  sum += remaining_cards.sum      # `remaining_cards` would need to be changed
end                               # to whatever we assigned `map` to if we chose
                                  # to assign the return value instead of using
puts sum                          # the destructive method - `map!`
puts
