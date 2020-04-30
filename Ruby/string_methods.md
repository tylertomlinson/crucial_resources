##### String Length
```ruby
"Turing".length or "Turing".size
#6
```
##### Checking if string is empty
```ruby
"Turing".size == 0
```
```ruby
"".empty?
#true
```
##### Reversing string
```ruby
"Turing".reverse
# “gniruT”
```
##### Upcasing string
```ruby
"Turing".upcase
# “TURING”
```
##### Downcasing string
```ruby
"TURING".downcase
# “turing”
```
##### Captializing string
```ruby
"turing".capitalize
# “Turing”
```
##### If a string contains another string
```ruby
"Turing".include? "z"
# equals to false because there is no z in Turing
```
##### Returns a copy of string with all occurrences of pattern substituted for the second argument
```ruby
"Turing".gsub!(/[ri]/, "z")
# Tuzzng
```
##### Transform string to integer
```ruby
"1".to_i
#1
```
##### Transform string to symbol
```ruby
"turing".to_sym or "test".intern
#:turing
```
##### Transform symbol to string
```ruby
:turing.to_s
#"turing"
```
##### Convert a string to an array of characters
<em><sub>can pass argument into this method to specify a different separator</sub></em>
```ruby
"turing".split
#['t', 'u', 'r', 'i', 'n', 'g']
```
##### Convert an array to a string
```ruby
turing_array = ['t', 'u', 'r', 'i', 'n', 'g']
turing_array.join
# "turing"
```
##### Iterate Over Characters Of a String in Ruby
```ruby
string = "turing"
string.each_char { |letter| puts letter }
#t
#u
#r
#i
#n
#g
```
##### String interpolation
<em><sub>allows you to combine strings together</sub></em>
```ruby
name = "Turing"
puts "#{name} is life!"
# "Turing is life!"
```
##### Padding a string
<em><sub>takes two arguments:</sub></em>
    <em><sub>first argument is length of final string</sub></em>
    <em><sub>second argument is what string will be padded with</sub></em>
```ruby
binary_string = "1111"
binary_string.rjust(7, "0")
# "0001111"
```
<em><sub>if you want to pad to the right you can use ljust</sub></em>
```ruby
binary_string = "1111"
binary_string.ljust(7, "0")
# "1111000"
```
