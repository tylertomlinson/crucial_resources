# ActiveRecord Calculations

#### Calculations

*ActiveRecord calculations allow us to perform manipulation of data from
database tables within our ActiveRecord models.

#### Types

Count

* If you want to see how many records are in your model's table you could call Client.count and that will return the number. If you want to be more specific and find all the clients with their age present in the database you can use

Client.count(:age)

Average

* If you want to see the average of a certain number in one of your tables you can call the average method on the class that relates to the table. This method call will look something like this:

Client.average("orders_count")

Minimum & Maximum

* If you want to find the minimum value of a field in your table you can call the minimum method on the class that relates to the table. This method call will look something like this:

Client.minimum("age")

* Conversley, we can call this:

Client.maximum("age")

* If you want to find the sum of a field for all records in your table you can call the sum method on the class that relates to the table. This method call will look something like this:

Client.sum("orders_count")

* These are the most commonly used calculation methods in ActiveRecord. Please feel
free to collaborate and add your favorite calculation methods to this list!
