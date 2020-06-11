### Reference url for model level assocations / validations

#### Setup
* place in gemfile test block and bundle
```sh
gem 'shoulda-matchers'
```
 * place in rails_helper.rb with spec folder
```ruby
Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
```

#### Association Matchers

##### belong_to
```ruby
RSpec.describe Mod do
  it { should belong_to(:turing) }
end
```
##### have_many
```ruby
RSpec.describe Student do
  it { should have_many(:mods) }
end
```
##### have_one
```ruby
describe Student do
  it { should have_one(:portfolio) }
end
```

#### Validation Matchers

##### validate_acceptance_of
```ruby
RSpec.describe Turing do
  it { should validate_acceptance_of(:terms) }
end
```
##### validate_format_of
```ruby
RSpec.describe Student do
  it { should validate_format_of(:key_card).with(/\A\d{3}-\d{2}-\d{4}\Z/) }
end
```
##### validate_presence_of
```ruby
RSpec.describe Student do
  it { should validate_presence_of(:name) }
end
```
##### validate_uniqueness_of
```ruby
RSpec.describe Student do
  it { should validate_uniqueness_of(:email) }
end
```
