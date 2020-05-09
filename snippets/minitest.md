##### Creates snippet that will setup a test file by running `setuptest`
<em><sub>nested within ```'.ruby.source':```</sub></em>

```coffeescript
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
