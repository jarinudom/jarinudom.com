require 'test_helper'

class ResumeTest < ActiveSupport::TestCase
  
  # Need to specify the message because Shoulda is not 100% Rails 3 compatible yet
  should_validate_presence_of :name, :address, :city, :state, :zip,
                              :phone, :email,
                              :message => "can't be blank"
                              
  should_not_allow_values_for :email, "blah", "b lah", :message => "is invalid"
  should_allow_values_for     :email, "a@b.com", "asdf@asdf.com"
  
  should_not_allow_values_for :website, "blah", "b lah", :message => "is invalid"
  should_allow_values_for     :website, "http://example.com", "http://example.com/"
                              
end
