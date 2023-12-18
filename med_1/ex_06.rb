system 'clear'
# medium 1 - exercise 6

# PROBLEM #

#   - Write a method that implements a miniature stack-and-register-based
#     programming language that has the following commands:

#    > n Place a value n in the "register". Do not modify the stack.

#    > PUSH Push the register value on to the stack. Leave the value in the
#       register.

#    > ADD Pops a value from the stack and adds it to the register value,
#       storing the result in the register.

#    > SUB Pops a value from the stack and subtracts it from the register value,
#       storing the result in the register.

#    > MULT Pops a value from the stack and multiplies it by the register
#       value, storing the result in the register.

#    > DIV Pops a value from the stack and divides it into the register value,
#       storing the integer result in the register.

#    > MOD Pops a value from the stack and divides it into the register value,
#       storing the integer remainder of the division in the register.

#    > POP Remove the topmost item from the stack and place in register

#    > PRINT Print the register value

#   - Programs will be supplied to your language method via a string passed in
#     as an argument.
#   - You should initialize the register to 0.

#   input: String
#   output: Integer(s)

# EXAMPLES #
#   - '5 PUSH 3 MULT PRINT' => 15
#     register -> 5
#     PUSH 3 -> stack -> [3]
#     MULT -> stack pop -> [] -> register 5 times 3 => 15

# DATA STRUCTURES #
#   - String
#   - Integer
#   - Array (for the stack and the commands list)

# ALGORITHM #

#   - initialize a `register` variable to 0
#   - split the argument string by whitespace and store in array `tokens`
#   - initialize an empty array `stack`

#   - iterate the `tokens` array to get commands
#   - compare each command with a case statement to take action on
#   - end program after all commands iterated

# CODE #

def minilang(program)
  stack = []
  register = 0

  program.split.each do |token|
    case token
    when 'PUSH'   then stack.push(register)
    when 'ADD'    then register += stack.pop
    when 'SUB'    then register -= stack.pop
    when 'MULT'   then register *= stack.pop
    when 'DIV'    then register /= stack.pop
    when 'MOD'    then register %= stack.pop
    when 'POP'    then register = stack.pop
    when  'PRINT' then puts register
    else               register = token.to_i
    end
  end
end

minilang('PRINT')
# 0
puts "____\n\n"

minilang('5 PUSH 3 MULT PRINT')
# 15
puts "____\n\n"

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8
puts "____\n\n"

minilang('5 PUSH POP PRINT')
# 5
puts "____\n\n"

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7
puts "____\n\n"

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6
puts "____\n\n"

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12
puts "____\n\n"

minilang('-3 PUSH 5 SUB PRINT')
# 8
puts "____\n\n"

minilang('6 PUSH')
# (nothing printed; no PRINT commands)
puts puts
