require 'rails_helper'

RSpec.describe "Registered user can add new mural location", type: :feature do
  xit "can add a new mural location" do
    visit root_path
    mock_auth_hash
    click_link "Sign In"
    click_link "Add Street Art"
    fill_in "mural[name]", with: "Pretty Mural"
    fill_in "mural[image]", with: "Image Url"
    fill_in "mural[latitude]", with: "10"
    fill_in "mural[longitude]", with: "10"
    fill_in "mural[artist_name]", with: "Megan Davis"
    fill_in "mural[date_created]", with: "Today"
    fill_in "mural[description]", with: "Sooo pretty"
    click_button "Submit"
    expect(page).to have_content("Pretty Mural")
    expect(page).to have_content("Image Url")
    expect(page).to have_content("10")
    expect(page).to have_content("10")
    expect(page).to have_content("Megan Davis")
    expect(page).to have_content("Today")
    expect(page).to have_content("Sooo pretty")
  end
end
