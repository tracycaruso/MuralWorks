require 'rails_helper'

RSpec.describe "Registered user can edit profile", type: :feature do
  it "can edit profile" do
    visit root_path
    mock_auth_hash
    click_link "Sign In"
    click_link "Edit Profile"
    fill_in "user[full_name]", with: "Megan Davis"
    fill_in "user[image_url]", with: "Image Url"
    fill_in "user[email]", with: "new_email@gmail.com"
    fill_in "user[description]", with: "I'm so cool"
    fill_in "user[occupation]", with: "bum"
    fill_in "user[twitter_link]", with: "twitter.com"
    fill_in "user[instagram_link]", with: "instagram.com"
    fill_in "user[linkedin_link]", with: "linkedin.com"
    fill_in "user[ello_link]", with: "ello.com"
    fill_in "user[facebook_link]", with: "facebook.com"
    fill_in "user[dribbble_link]", with: "dribbble.com"
    fill_in "user[website_url]", with: "website.com"
    click_button "Submit"
    expect(page).to have_content("Megan Davis")
    expect(page).to have_content("new_email@gmail.com")
    expect(page).to have_content("I'm so cool")
    expect(page).to have_content("bum")
    expect(page).to have_content("twitter.com")
    expect(page).to have_content("instagram.com")
    expect(page).to have_content("ello.com")
    expect(page).to have_content("facebook.com")
    expect(page).to have_content("dribbble.com")
    expect(page).to have_content("website.com")
  end
end
