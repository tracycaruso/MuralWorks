require 'rails_helper'

RSpec.describe "Guest User can view a single user", type: :feature do
  before(:each) do
    # @user1 = User.create(full_name: "Tracy Caruso", user_name: "Ycart", email: "Tracy@gmail.com", password:"yoloyolo", password_confirmation:"yoloyolo", occupation:"Freelance Web Developer", description: "Living life", twitter_link:"twitter.com/YcartCaruso", facebook_link:"facebook.com/YcartCaruso", linkedin_link:"linkedin.com/YcartCaruso", ello_link:"ello.com/YcartCaruso", instagram_link:"instagram.com/YcartCaruso", dribbble_link:"dribbble.com/YcartCaruso", website_url:"www.tracymcaruso.com")
    @user2 = User.create(full_name: "Billy Bob", user_name: "Bbobby", email: "bob@gmail.com", password:"yoloyolo", password_confirmation:"yoloyolo", occupation:"Freelance Web Developer", description: "Living life", twitter_link:"twitter.com/bob", facebook_link:"facebook.com/bob", linkedin_link:"linkedin.com/bob", ello_link:"ello.com/bob", instagram_link:"instagram.com/bob", dribbble_link:"dribbble.com/bob", website_url:"www.bob.com")
  end

  xit "can view a single users page" do
    visit root_path
    click_link "User Directory"
    click_link "Bbobby"
    expect(page).to have_content("Billy Bob")
    expect(page).to have_content("bob@gmail.com")
    expect(page).to have_content("Bbobby")
    expect(page).to have_content("Freelance Web Developer")
    expect(page).to have_content("Living life")
    expect(page).to have_content("twitter.com/bob")
    expect(page).to have_content("facebook.com/bob")
    expect(page).to have_content("linkedin.com/bob")
    expect(page).to have_content("ello.com/bob")
    expect(page).to have_content("instagram.com/bob")
    expect(page).to have_content("dribbble.com/bob")
    expect(page).to have_content("www.bob.com")
  end
end
