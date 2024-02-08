system 'clear'
# advanced 1 - exercise 1

# PROBLEM #

#   - 

################################################################################
ADJECTIVES = %w(sparkly smooth red green slippery tingly hairy bumpy round crispy vibrant happy)
NOUNS = %w(elf plant gingerbread penguin desk candle pumpkin unicorn cupcake)
VERBS = %w(burp fart sniff kiss leap ski reach squat splat scribble sneeze)
PLURAL_NOUNS = %w(fairies lights dancers bananas violins frogs gumdrops monkeys)
NAMES = ['Santa', 'Ed Sheeran', 'Marvin', 'Mom', 'Repunzel', 'Britney Spears' ]

file = File.open('ex_01.txt') do |file|
  file.each do |line|
    puts format(line, adjective:    ADJECTIVES.sample,
                      noun:         NOUNS.sample,
                      verb:         VERBS.sample,
                      plural_noun:  PLURAL_NOUNS.sample,
                      name:         NAMES.sample)
  end
end
puts
