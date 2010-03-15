class Resume < ActiveRecord::Base
  
  validates_presence_of :name, :address, :city, :state, :zip,
                        :phone, :email
                              
  validates_format_of :email,
                      :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
                      
  validates_format_of :website,
                      :with => /^http\:\/\/[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,3}(\/\S*)?$/
  
end
