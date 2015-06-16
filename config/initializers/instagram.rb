require 'instagram'

Instagram.configure do |config|
  config.client_id = ENV["INSTAGRAM_CLIENT"]
  config.client_secret = ENV["INSTAGRAM_SECRET"]
end

CALLBACK_URL = "http://localhost:3000/auth/instagram/callback"
