<h1 align="center">PEDAC</h1>

<h4 align="center">Exercise 05</h4>

<p align="center">Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. </p>

---

<br>

### P: Understand the Problem

In my own words:

- create a method that will take an `integer` argument greater than `1`. The method will find all of the multiples of `3` and `5` that are between `1` and the number provided. Finally, the method will compute the sum of the multiples.

<br>

input: `integer`

output: `integer`

rules:

- Explicit requirements:
  
  - You may assume that the number passed in is an integer greater than 1
  - find multiples of `3` and `5` that are between `1` and a provided number
  - add together all of the multiples that were found and return this total

<br>

- Implicit requirements:
  
  - a multiple will be even divisible
    - e.g. `15 % 5 == 0` and `15 % 3 == 0`
  - the number itself ***IS*** included

<br>

Clarify:

- Q:
  
  - A:

<br>

### E: Examples / Test Cases

- if the supplied number is `20`, the result should be `98` (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20)

```ruby
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168
```

<br>

### D: Data Structure

- `integer`

- `array`

<br>

### A: Algorithm

- define a method named `multisum` with one parameter called `num`
  
  - test each number between `1` and `num` to see if they're multiples of `3` or `5`
    
    - if `num` is a multiple then add it to an array called `multiples`
  
  - add the elements of the `multiples` array together and return them

<br>

### C: Code

The corresponding code is under the filename `ex_05.rb`.

<br>

---

<br>

#### Notes / Personal Feedback:
