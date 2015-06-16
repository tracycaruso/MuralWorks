require 'rails_helper'

RSpec.describe "Registered user can login with omniauth", type: :feature do
  describe "user with valid information" do
    it "is signed in successfully" do
      visit root_path
      mock_auth_hash
      click_link "Login with Instagram"
      expect(page).to have_content "instagram user"
    end
  end

  describe "user with invalid information" do
    xit "is can signin" do
      visit root_path
      OmniAuth.config.mock_auth[:instagram] = :invalid_credentials
      click_link "Login with Instagram"
    end
  end
end
