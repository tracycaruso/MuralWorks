require 'rails_helper'

RSpec.describe "Registered user can delete mural", type: :feature do
  before(:each) do
    Mural.create(name: "Mural 1", image: "https://scontent.cdninstagram.com/hphotos-xfa1/t51.2885-15/e15/11378549_1440876629552491_805058315_n.jpg", latitude: 10, longitude: 10, artist_name: "Megan Davis", artist_website: "megan-davis.com", date_created: Time.now, description: "one beautiful mural")
  end

  it "can delete mural" do
    visit root_path
    mock_auth_hash
    click_link "Sign In"
    within('.mural_image_saved') do
      click_link('Delete')
    end
  end
end
