require 'test_helper'

class EducationTest < ActiveSupport::TestCase
  
  # Need to specify the message because Shoulda is not 100% Rails 3 compatible yet
  should_validate_presence_of :name, :location, :date, 
                              :message => "can't be blank"
  
end
