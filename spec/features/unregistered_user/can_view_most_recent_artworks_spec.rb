require "rails_helper"

feature "a guest user can view most recent artwork" do
  before(:each) do
    @user = User.create(full_name: "Tracy Caruso", user_name: "Ycartc", email: "tracy@gmail.com", password: "yoloyolo", password_confirmation: "yoloyolo")

    @artwork1 = {name: "Mural 1", image: "link_to_image", latitude: 10, longitude: 10, artist_name: "Megan Davis", artist_website: "megan-davis.com", date_created: Time.now, description: "one beautiful mural"}

    @artwork2 = {name: "Mural 2", image: "link_to_image", latitude: 10, longitude: 10, artist_name: "Megan Davis", artist_website: "megan-davis.com", date_created: Time.now, description: "two beautiful mural"}

    @artwork3 = {name: "Mural 3", image: "link_to_image", latitude: 10, longitude: 10, artist_name: "Megan Davis", artist_website: "megan-davis.com", date_created: Time.now, description: "three beautiful mural"}

    @artwork4 = {name: "Mural 4", image: "link_to_image", latitude: 10, longitude: 10, artist_name: "Megan Davis", artist_website: "megan-davis.com", date_created: Time.now, description: "four beautiful mural"}

    @user.artworks.create(@artwork1)
    @user.artworks.create(@artwork2)
    @user.artworks.create(@artwork3)
    @user.artworks.create(@artwork4)
  end

  scenario "can view the top 3 most recent artworks" do
    visit root_path
    click_link "Most Recent Art"
    expect(page).to have_content("Mural 4")
    expect(page).to have_content("Mural 3")
    expect(page).to have_content("Mural 2")
    expect(page).to_not have_content("Mural 1")
  end
end
