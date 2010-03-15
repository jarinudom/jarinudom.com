require 'test_helper'

class CertificationTest < ActiveSupport::TestCase
  
  # Need to specify the message because Shoulda is not 100% Rails 3 compatible yet
  should_validate_presence_of :name, :start_date, :message => "can't be blank"
  
end
