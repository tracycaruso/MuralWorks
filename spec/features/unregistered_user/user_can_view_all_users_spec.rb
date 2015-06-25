require 'rails_helper'

RSpec.describe "Guest User can view all users", type: :feature do
  before(:each) do
    User.create(full_name: "Tracy Caruso", user_name: "Ycart", email: "tracy@gmail.com")
    User.create(full_name: "Billy Bob", user_name: "Bbobby", email: "bob@gmail.com")
    User.create(full_name: "Megan Davis", user_name: "Mdavis", email: "megan@gmail.com")
    User.create(full_name: "Banana Man", user_name: "BananaMan", email: "banana@gmail.com")
  end

  it "can view user directory page" do
    visit root_path
    click_link "User Directory"
    expect(page).to have_content("Ycart")
    expect(page).to have_content("Bbobby")
    expect(page).to have_content("Mdavis")
    expect(page).to have_content("BananaMan")
  end
end
