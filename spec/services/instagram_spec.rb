require 'rails_helper'

RSpec.describe "Instagram Service", type: :model do
  attr_reader :service

  # Two options for testing external API's
  #  1 - mock HTTP endpoints
  #  2 - make real requests once, and then use a recorded response

  # Instantiate your Instagram service
  # ???? Somehow link a user to the service
  # Make an external API request
  # Make assertions about the data you get back

  # it 'can get users photos' do
  #   VCR.use_cassette("user images") do
  #     user = User.new(token: ENV['USER_TOKEN'])
  #     instagram = InstagramService.new(user)
  #     puts instagram.get_user_instagrams
  #   end
  # end

end
