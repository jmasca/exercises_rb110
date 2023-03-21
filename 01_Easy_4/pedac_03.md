<h1 align="center">PEDAC</h1>

<h4 align="center">Exercise 03</h4>

<p align="center">In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.</p>

<p align="center">Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.</p>

---

<br>

### P: Understand the Problem

In my own words:

- write a method that accepts an integer value greater than 0 as input (this represents a year). The method will return a boolean value based on whether or not the provided year is a leap year or not (true or false).

<br>

input: `integer`

output: `boolean`

rules:

- Explicit requirements:
  
  - method: accepts a `year` as an integer value; the value must be `greater than 0`
  - method: returns `true` if the provided year is a leap year, `false` otherwise.
  - determine a leap year:
    - 1st requirement: the `year` must be divisible by `4`
    - 2nd requirement: cannot be divisible by `100`
      - if `year` is also divisible by `100`:
        - it must be divisible by `400` to be a leap year

<br>

- Implicit requirements:
  
  - the year can be any size and will still be correct

<br>

Clarify:

- Q: How is a `0` to be handled? An automatic `false`, an `error`, or nothing?
  
  - A:

<br>

### E: Examples / Test Cases

```ruby
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true
```

<br>

### D: Data Structure

- `integer`

- `boolean`

<br>

### A: Algorithm

- define a method named `leap_year?` with the parameter `year`
  
  - return `false` if `year` is less than `1`
  
  - conditional check:
    
    - `if` `year` modulo `4` is equal to `0`
      
      - nested conditional check:
        
        - `if` `year` modulo `100` is equal to `0`
          
          - nested conditional check:
            
            - `if` `year` modulo `400` is equal to `0`
              
              - return `true`
            
            - `else` return `false`
        
        - `else` return `true`
    
    - `else` return `false`

<br>

### C: Code

The corresponding code is under the filename `ex_03.rb`.

<br>

---

<br>

#### Notes / Personal Feedback:

- look for patterns of what would be `true` or `false` because going backwards vs. forwards with the logic could make a difference in how long the solution is or how many conditionals/nested conditionals are used.

- this was a good exercise for practice:
  
  - take even more time breaking things down and looking into them.
  
  - its good to find a working solution, but its also important to look at the problem from multiple perspectives. this is practicing problem solving skills. utilize practice to become better.
