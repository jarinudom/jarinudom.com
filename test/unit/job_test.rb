require 'test_helper'

class JobTest < ActiveSupport::TestCase
  # Need to specify the message because Shoulda is not 100% Rails 3 compatible yet
  should_validate_presence_of :position, :employer, :location, :start, :description,
                              :message => "can't be blank"
end
