ENV["RAILS_ENV"] ||= 'test'
require 'pathname'
require Pathname.new(__dir__).join("manageiq/config/environment").to_s
require 'rspec/rails'

require 'manageiq/decorators'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
