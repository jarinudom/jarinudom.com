require 'test_helper'

class SkillTest < ActiveSupport::TestCase
  
  should_validate_presence_of :name, :level
  should_allow_values_for :level, 1, 2, 3
  should_not_allow_values_for :level, "abcd", 1234

end
