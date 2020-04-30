### Inventory of everything Rails g can do.
```sh
rails g -h
```
#### g and generate are interchangble

All of the Rails generators are entered as commands into the terminal and will follow this syntax:

```sh
rails g <name of generator> <options>
```
##### Supported Data types:
```sh
:binary
:boolean
:date
:datetime
:decimal
:float
:integer
:primary_key
:string
:text
:time
:timestamp
```

#### Creating a Model (name it something singular)
```sh
rails g model Mod name:string start_date:string
# includes the attributes: name and start date
```
##### Will create the following files:
```sh
invoke  active_record
create    db/migrate/20190618010724_create_mods.rb
create    app/models/application_record.rb
create    app/models/mod.rb
```
##### Migration file created:
```ruby
class CreateMods < ActiveRecord::Migration[5.1]
  def change
    create_table :mods do |t|
      t.string :name
      t.string :start_date

      t.timestamps
    end
  end
end
```
#### Add Column to Existing Model
```sh
rails generate migration AddFieldToMods classroom:string
```
##### Migration file created:
```ruby
class AddFieldToMods < ActiveRecord::Migration[5.1]
  def change
    add_column :mods, :classroom, :string
  end
end
```
##### The change method will allow you to:
```sh
add_column
add_index
add_timestamps
create_table
remove_timestamps
rename_column
rename_index
rename_table
```
##### Creating a Standalone Migration
```sh
rails g migration AddFieldToMods
```
#### Creating a Controller
<em><sub>notice the plurization</sub></em>
```sh
rails g controller Mods show: index: create:
```
##### Will create the following files:
```
create  app/controllers/mods_controller.rb
       route  get 'mods/create:'
       route  get 'mods/index:'
       route  get 'mods/show:'
      invoke  erb
      create    app/views/mods
      create    app/views/mods/show:.html.erb
      create    app/views/mods/index:.html.erb
      create    app/views/mods/create:.html.erb
      invoke  rspec
      create    spec/requests/mods_request_spec.rb
      create    spec/views/mods
      create    spec/views/mods/show:.html.erb_spec.rb
      create    spec/views/mods/index:.html.erb_spec.rb
      create    spec/views/mods/create:.html.erb_spec.rb
      invoke  helper
      create    app/helpers/mods_helper.rb
      invoke    rspec
      create      spec/helpers/mods_helper_spec.rb
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/mods.coffee
      invoke    scss
      create      app/assets/stylesheets/mods.scss
```
