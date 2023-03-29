<h1 align="center">PEDAC</h1>

<h4 align="center">Exercise 02</h4>

<p align="center">Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.</p>

---

<br>

### P: Understand the Problem

In my own words:

- create a method that will return the century based on the year provided as input. A string should be returned with the century corresponding to the year provided. Also, include st, nd, rd, or th respectively.

<br>

input: integer

output: string

rules:

- Explicit requirements:
  
  - a method takes an integer
  - the method returns the string representation of the century with the suffix st, nd, rd, or th.
  - New centuries begin in years that end with `01`. So, the years 1901-2000 comprise the 20th century.

<br>

- Implicit requirements:
  
  - 11, 12, and 13th centuries need specific handling (1st v. 11th)

<br>

Clarify:

- Q:
  
  - A:

<br>

### E: Examples / Test Cases

```ruby
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'
```

<br>

### D: Data Structure

- `integer`

- `string`

<br>

### A: Algorithm

- define a method called `century` that takes one `integer` argument named `year`
  
  - if the number of digits in the `year` are `less than 3` or the `year` is `100`,
    
    - return the `'1st'` century
  
  - if the last two digits of the year are `'00'`,
    
    - divide by 100 to get the century
  
  - otherwise,
    
    - divide by 100 and then add 1 to get the century

<br>

### C: Code

The corresponding code is under the filename `ex_02.rb`.

<br>

---

<br>

#### Notes / Personal Feedback:

- need a better understanding of explicit / implicit requirements because my explicit requirements start looking like the algorithm instead of requirements.

- clarifying questions?

- look through all example cases carefully.

- go back and forth between the code and algorithm to make adjustments when/where necessary.
