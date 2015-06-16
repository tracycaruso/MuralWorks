require 'instagram'

Instagram.configure do |config|
  config.client_id = ENV["INSTAGRAM_CLIENT"]
  config.client_secret = ENV["INSTAGRAM_SECRET"]
end

production:
CALLBACK_URL = "https://the-street-art-project.herokuapp.com/auth/instagram/callback"

development:
CALLBACK_URL = "http://localhost:3000/auth/instagram/callback"
