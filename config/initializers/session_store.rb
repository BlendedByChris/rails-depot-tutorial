# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rails-depot-tutorial_session',
  :secret      => '498af622e6488f4c2f85a16de1d0413f31159adff9c32dc883b013a3e0cd139774ca78a45a664ef2d640a29fca68ea23d1ed27252544f3307bd742b126a657a2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
