class Certification < ActiveRecord::Base
  
  validates_presence_of :name, :start_date
  
end
