# ActiveRecord Queries

#### Query Methods

*Active Record provides several finder methods to retrieve data from a database. Arguments can be passed in, and this done so your Rails application can find data without writing SQL.

#### Query Methods

* General List of ActiveRecord methods:

annotate
find
create_with
distinct
eager_load
extending
extract_associated
from
group
having
includes
joins
left_outer_joins
limit
lock
none
offset
optimizer_hints
order
preload
readonly
references
reorder
reselect
reverse_order
select
where

Primary Methods

* Though the list of query methods lists well over 20 commands, there are only
a few which are primarily used.

Find

* Using the find method, you can retrieve the object corresponding to the specified primary key that matches any supplied options. For example:

# Find the client with primary key (id) 10.
client = Client.find(10)
# => #<Client id: 10, first_name: "Ryan">

Where

* The where method allows you to specify conditions to limit the records returned, representing the WHERE-part of the SQL statement. Conditions can either be specified as a string, array, or hash.

# Client.where("orders_count = '2'")

This will find all clients where the orders_count field's value is 2.

Order

* To retrieve records from the database in a specific order, you can use the order method.

For example, if you're getting a set of records and want to order them in ascending order by the created_at field in your table:

Client.order(:created_at)
# OR
Client.order("created_at")

Select

To select only a subset of fields from the result set, you can specify the subset via the select method.

For example, to select only viewable_by and locked columns:

Client.select(:viewable_by, :locked)
# OR
Client.select("viewable_by, locked")

* These are the most commonly used query methods in ActiveRecord. Please feel
free to collaborate and add your favorite query methods to this list!
