require 'rails_helper'

RSpec.describe "Registered user can logout with omniauth", type: :feature do

  xit "can logout" do
    visit root_path
    click_link logout
    expect(page).not_to have_content("Welcome Tracy Caruso")
    expect(page).to have_content("Sign In")
  end
end
