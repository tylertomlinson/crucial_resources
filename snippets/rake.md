##### Creates snippet that will setup a rake file by running `setuprake`
<em><sub>nested within ```'.ruby.source':```</sub></em>

```ruby
'Rake':
  'prefix': 'setuprake'
  'body': """
  require 'rake/testtask'

  task default: %w[test]

  Rake::TestTask.new do |task|
   task.pattern = "test/*_test.rb"
  end
  """
  ```
