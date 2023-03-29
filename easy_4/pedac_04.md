<h1 align="center">PEDAC</h1>

<h4 align="center">Exercise 04</h4>

<p align="center">A continuation of the previous exercise.

The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.

Using this information, update the method from the previous exercise to determine leap years both before and after 1752.</p>

---

<br>

### P: Understand the Problem

In my own words:

- update the previous exercise so that prior to 1752, a leap year is determined solely by being divisible by 4. the remaining functionality of the program should remain the same.

<br>

input:

output:

rules:

- Explicit requirements:
  
  - 

<br>

- Implicit requirements:
  
  - 

<br>

Clarify:

- Q:
  
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
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true
```

<br>

### D: Data Structure

<br>

### A: Algorithm

- add a conditional statement to test for the input value being less than or equal to `1752`.
  
  - if `true`, `leap_year` is any year where `year % 4 == 0`

<br>

### C: Code

The corresponding code is under the filename `ex_04.rb`.

<br>

---

<br>

#### Notes / Personal Feedback:

- 
