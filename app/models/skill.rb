class Skill < ActiveRecord::Base
  
  validates_presence_of :name, :level
  validates_inclusion_of :level, :in => 1..3
  
end
