ENV['ENVIRONMENT'] = 'test'
require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

# Set the environment to "test"
require_relative './set_up_test_database'

RSpec.configure do |config|
  config.before(:each) do
    set_up_test_database
  end
end

# require our Sinatra app file
require File.join(File.dirname(__FILE__), '..', 'app.rb')
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'features/web_helpers'

# tell Capybara about our app class
Capybara.app = Bookmark
