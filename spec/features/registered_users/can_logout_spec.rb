require 'rails_helper'

RSpec.describe "Registered user can logout with omniauth", type: :feature do
  it "can logout" do
    visit root_path
    mock_auth_hash
    click_link "Sign In"
    click_link "Logout"
    expect(page).not_to have_content("Welcome Tracy Caruso")
    expect(page).to have_content("Sign In")
  end
end
