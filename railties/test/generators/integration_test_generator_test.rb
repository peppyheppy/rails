require 'generators/generators_test_helper'
require 'rails/generators/rails/integration_test/integration_test_generator'

class IntegrationTestGeneratorTest < Rails::Generators::TestCase
  include GeneratorsTestHelper
  arguments %w(integration)

  def test_integration_test_skeleton_is_created
    run_generator
    assert_file "test/controllers/integration_test.rb", /class IntegrationTest < ActionController::IntegrationTest/
  end
end