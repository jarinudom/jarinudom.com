# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_jarinudom.com_session',
  :secret => '2f96f2c5b7104f1d36834eaa0ecafae3fa1de42bd76ef2597e37ec8303cf37301861f87d85be62dc6f6271fa84e6919720c62fd7351f27b1db015e48f211d6ae'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
