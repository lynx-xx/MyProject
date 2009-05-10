# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_hospital_pages_session',
  :secret      => 'd6805912cda75168964ba6c052fd26396502d7cca3b0deec38cc46ceb43a0405f37fe7041e516841853e377f0d6c56fb5f5624d70f8fcc56671325c75276343b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
