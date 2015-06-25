require 'rails_helper'

RSpec.describe "Guest User can view a single user", type: :feature do
  before(:each) do
    User.create(full_name: "Tracy Caruso", user_name: "tracymcaruso", email: "tracy@gmail.com", provider: "instagram", token: ENV['USER_TOKEN'], image_url: "https://igcdn-photos-a-a.akamaihd.net/hphotos-ak-xaf1/t51.2885-19/11376439_1629117797306440_1800201839_a.jpg", occupation: "Developer", description: "I love street art", twitter_link: "http://twitter.com", instagram_link: "http://instagram.com", linkedin_link: "http://linkedin.com", ello_link: "http://ello.com", facebook_link: "http://facebook.com", dribbble_link: "http://dridbble.com", website_url: "http://www.tracymcaruso.com")
  end

  it "can view a single users page" do
    visit root_path
    click_link "User Directory"
    click_link "tracymcaruso"
    expect(page).to have_content("tracymcaruso")
  end
end
