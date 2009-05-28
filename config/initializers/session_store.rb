# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_HospitalPages_session',
  :secret      => '9473eb3659549c70429b8aa726cc7c67e77f59213bf5e15e062646e72d60e53ce38fc6d45027d2f0c192c8166571ee27a639bce13a73a0acf521429d78bd5a7e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
