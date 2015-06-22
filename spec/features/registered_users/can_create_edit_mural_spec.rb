require 'rails_helper'

RSpec.describe "Registered user can edit mural", type: :feature do
  before(:each) do
    Mural.create(name: "Mural 1", image: "https://scontent.cdninstagram.com/hphotos-xfa1/t51.2885-15/e15/11378549_1440876629552491_805058315_n.jpg", latitude: 10, longitude: 10, artist_name: "Megan Davis", artist_website: "megan-davis.com", date_created: Time.now, description: "one beautiful mural")
  end

  it "can edit mural" do
    visit root_path
    mock_auth_hash
    click_link "Sign In"
    within('.mural_image_saved') do
      click_link('Edit')
    end
    fill_in "mural[name]", with: "Pretty Mural"
    fill_in "mural[latitude]", with: "10"
    fill_in "mural[longitude]", with: "10"
    fill_in "mural[artist_name]", with: "Megan Davis"
    fill_in "mural[date_created]", with: "Today"
    fill_in "mural[description]", with: "Sooo pretty"
    click_button "Submit"
    expect(page).to have_content("Pretty Mural")
    expect(page).to have_content("10")
    expect(page).to have_content("10")
    expect(page).to have_content("Megan Davis")
    expect(page).to have_content("Today")
    expect(page).to have_content("Sooo pretty")

  end
end
