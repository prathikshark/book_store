ENV['RAILS_ENV'] ||= 'test'
require_relative "../config/environment"
require "rails/test_help"

# MIMIC ENV LOAD_PATHS
load_paths = []

load_paths += Dir[File.expand_path("#{Rails.root}/{app/models,lib}")]

load_paths.each do |load_path|
  $LOAD_PATH.push(load_path) unless $LOAD_PATH.include?(load_path)
end


class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors, with: :threads)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end



