require 'test_helper'

class SkillTest < ActiveSupport::TestCase
  
  # Need to specify the message because Shoulda is not 100% Rails 3 compatible yet
  should_validate_presence_of :name, :level, :message => "can't be blank"
  should_ensure_value_in_range :level, 1..3, :message => "is not included in the list"

end
