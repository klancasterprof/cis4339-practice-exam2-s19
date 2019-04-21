# frozen_string_literal: true

require 'test_helper'

class JobTest < ActiveSupport::TestCase
  test 'a job must have a description' do
    job = Job.new
    assert job.respond_to? 'description', 'description method was not found'
  end
end
