<h1 align="center">PEDAC</h1>

<h4 align="center">Exercise 01</h4>

<p align="center">Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.</p>

---

<br>

### P: Understand the Problem

In my own words:

- Define a method that has two string parameters. In this method, determine which string is the longest between the two provided. Concatenate the shorter string, the longer string, and then the shorter string again. Return the result of this concatenation. Assume all strings are different lengths.

<br>

input: two strings

output: one string (a new string)

rules:

- Explicit requirements:
  
  - create a method that takes two string arguments
  - find the longer of the two strings
  - return a string consisting of:
    - the shorter string concatenated with the longer string and then the shorter string again
  - all strings are different lengths

<br>

- Implicit requirements:
  
  - if one string is empty, nothing is concatenated

<br>

Clarify:

- Q:
  
  - A:

<br>

### E: Examples / Test Cases

```ruby
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"
```

<br>

### D: Data Structure

- String objects

<br>

### A: Algorithm

- method definition header:
  
  - a method named `short_long_short`
  
  - two parameters named `str_1` and `str_2`

- method definition body:
  
  - to a variable named `str_arr`, assign an array containing `str_1` and `str_2`; sorted by size
  
  - concatenate the string at index `0` of `str_arr` to index `1` and then the string at index `0` again

- end the method

<br>

### C: Code

The corresponding code is under the filename `ex_01.rb`.

<br>

---
