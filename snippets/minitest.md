##### Creates snippet that will setup a test file by running `setuptest`
```ruby
'Test Setup':
  'prefix': 'setuptest'
  'body': """
  require_relative 'test_helper'

  class $1Test < Minitest::Test

    def setup
      $2
    end
  end
  """
```
