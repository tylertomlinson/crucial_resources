# Equality
1 == 1 #=> true
2 == 1 #=> false

# Inequality
1 != 1 #=> false
2 != 1 #=> true

# apart from false itself, nil is the only other 'falsey' value

!nil   #=> true
!false #=> true
!0     #=> false

# More comparisons
1 < 10 #=> true
1 > 10 #=> false
2 <= 2 #=> true
2 >= 2 #=> true

# Combined comparison operator
1 <=> 10 #=> -1
10 <=> 1 #=> 1
1 <=> 1 #=> 0

# Logical operators
true && false #=> false
true || false #=> true
!true #=> false
