## match, capture & replace

 return value when using `=~` is either the string index or `nil`

### Character classes: define a set of allowed characters
*A character class lets you define a range or a list of characters to match*

```ruby
def contains_vowel(str)
  str =~ /[aeiou]/
end

contains_vowel("test") # returns 1
contains_vowel("sky")  # returns nil
```
 *Will not take into account the _amount_ of characters*

### Ranges
*useful ranges:*
-   **[0-9]**  matches any number from 0 to 9
-   **[a-z]**  matches any letter from a to z (no caps)
-   **[^a-z]**  negated range

 *shorthand syntax for specifying character ranges:*
-   `\w`  is equivalent to  **[0-9a-zA-Z_]**
-   `\d`  is the same as  **[0-9]**
-   `\s`  matches  **white space**  (tabs, regular space, newline)
- capitalizing turns shorthand into negative for of above (`\W`,`\D`,`\S`)

```ruby
def contains_number(str)
  str =~ /[0-9]/
end

contains_number("The year is 2015")  # returns 12
contains_number("The cat is black")  # returns nil
```

##### Dot Character
`.` matches everything but new lines. If you need to use a literal `.` then you will have to escape it.

```ruby
# If we don't escape, the letter will match
"5a5".match(/\d.\d/)

# In this case only the literal dot matches
"5a5".match(/\d\.\d/) # nil
"5.5".match(/\d\.\d/) # match
```

### Modifiers

To match multiple characters use pattern modifiers.

|modifier|Description |
|--|--|
|`+` | 1 or more |
|`*` | 0 or more |
|`?` | 0 or 1    |
|`{10,20}` | Between 10 and 20 |


### Regular-Expression Modifiers
*Regular expression literals may include an optional modifier to control various aspects of matching. The modifier is specified after the second slash character, as shown previously and may be represented by one of these characters −*

##### Ignores case when matching text.
`i`

##### Performs #{} interpolations only once, the first time the regexp literal is evaluated.
`o`


##### Ignores whitespace and allows comments in regular expressions.
`x`

##### Matches multiple lines, recognizing newlines as normal characters.
`m`

##### Interprets the regexp as Unicode (UTF-8), EUC, SJIS, or ASCII. If none of these modifiers is specified, the regular expression is assumed to use the source encoding.

`u,e,s,n`


##### String literals: find a particular piece of text
##### Anchors: the beginning and the end of the string, or a word

##### Quantifiers: define how often a character is expected to occur
##### Captures: once found, capture a particular part of the text, so we can use it
