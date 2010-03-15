class Job < ActiveRecord::Base
  
  validates_presence_of :position, :employer, :location, :start_date, :description
  
end
