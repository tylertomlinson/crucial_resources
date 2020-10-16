# Arrays

*Ordered, integer-indexed collections of any object.*
*Always keep their order*
*Array indexing starts at 0*

#### <u>Different ways to create an array</u>

`array= ['T', 'U', 'R', 'I', 'N', 'G']`
`array = Array.new`
`array = []`

*with duplicate values*

```ruby
array = Array.new(5, " ")
	# -> [" ", " ", " ", " ", " "]
```

*create an array of strings with a shortcut*

```ruby
array = %w(T U R I N G)
	# -> ['T', 'U', 'R', 'I', 'N', 'G']
```

#### <u>Accessing Elements using [ ] method</u>

```ruby
array= ['T', 'U', 'R', 'I', 'N', 'G']
```

```ruby
array[0]
	# -> 'T'
```

```ruby
array[1,3]
	# -> ['U', 'R', 'I']
```

```ruby
array[1..4]
	# -> ['U', 'R', 'I', 'N']
```

```ruby
array[1..-3]
	# -> ['U', 'R', 'I']
```



#### <u>Manipulating Elements within array</u></u>

##### appending element

```ruby
Shovel Operator
array= ['T', 'U', 'R', 'I', 'N', 'G']
	array << 'S'
puts array
	['T', 'U', 'R', 'I', 'N', 'G', 'S']
```

##### setting element

```ruby
array = ['one', 'two', 'three']
array[3] = 'four'
puts array
	# -> ['one', 'two', 'three', 'four']
```

##### overwrite existing element

```ruby
array= ['T', 'U', 'R', 'I', 'N', 'G']
	array[0] = 'Z'
puts array
	# -> ['Z', 'U', 'R', 'I', 'N', 'G', 'S']
```
