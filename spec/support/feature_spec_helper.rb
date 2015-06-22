module FeatureSpecHelper

  def mock_auth_hash
    OmniAuth.config.mock_auth[:instagram] = OmniAuth::AuthHash.new({
      "provider" => "instagram",
      "uid" => "12345",
      "info" => {
        "nickname" => "instagram user",
        "image" => "image url",
        "website" => "fake.com"
      },
      "credentials" => {
        "token" => ENV['USER_TOKEN']
      }
    })
  end
end
