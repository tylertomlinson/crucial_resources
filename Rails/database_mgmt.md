##### Get DB up and running
```sh
$ rake db:create
```
##### Load `schema.rb` into DB
```sh
$ rake db:schema:load
```
##### Load data into DB from `seed.rb`
```sh
$ rake db:seed
```
##### Simplified above commands into one line
```sh
$ rake db:setup
#db:create
#db:schema:load
#db:seed
```
##### Delete the database
```sh
$ rake db:drop
```
##### Dropping DB and seeding
```sh
$ rake db:reset
# Drop the database: rake db:drop
# Load the schema: rake db:schema:load
# Seed the data: rake db:seed
```
