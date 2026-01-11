ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    # fixtures :all
    # Load fixtures on a per-test basis to avoid failing tests when fixture tables
    # are not present in the test database.

    # Add more helper methods to be used by all tests here...
  end
end
