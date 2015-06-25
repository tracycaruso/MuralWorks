require "rails_helper"
feature "a guest user can view most recent artwork" do
  before(:each) do
    @user = User.create(full_name: "Tracy Caruso", user_name: "Ycartc", email: "tracy@gmail.com")
    @mural1 = {name: "Mural 1", image: "link_to_image", latitude: 10, longitude: 10, artist_name: "Megan Davis", artist_website: "megan-davis.com", date_created: Time.now, description: "one beautiful mural"}
    @mural2 = {name: "Mural 2", image: "link_to_image2", latitude: 10, longitude: 10, artist_name: "Megan Davis", artist_website: "megan-davis.com", date_created: Time.now, description: "two beautiful mural"}
    @mural3 = {name: "Mural 3", image: "link_to_image3", latitude: 10, longitude: 10, artist_name: "Megan Davis", artist_website: "megan-davis.com", date_created: Time.now, description: "three beautiful mural"}
    @mural4 = {name: "Mural 4", image: "link_to_image4", latitude: 10, longitude: 10, artist_name: "Megan Davis", artist_website: "megan-davis.com", date_created: Time.now, description: "four beautiful mural"}
    @mural5 = {name: "Mural 5", image: "link_to_image5", latitude: 10, longitude: 10, artist_name: "Megan Davis", artist_website: "megan-davis.com", date_created: Time.now, description: "three beautiful mural"}
    @mural6 = {name: "Mural 6", image: "link_to_image6", latitude: 10, longitude: 10, artist_name: "Megan Davis", artist_website: "megan-davis.com", date_created: Time.now, description: "four beautiful mural"}
    @mural7 = {name: "Mural 7", image: "link_to_image7", latitude: 10, longitude: 10, artist_name: "Megan Davis", artist_website: "megan-davis.com", date_created: Time.now, description: "four beautiful mural"}

    @user.murals.create(@mural1)
    @user.murals.create(@mural2)
    @user.murals.create(@mural3)
    @user.murals.create(@mural4)
    @user.murals.create(@mural5)
    @user.murals.create(@mural6)
    @user.murals.create(@mural7)
  end

  scenario "can view the top 6 most recent artworks" do
    visit root_path
    click_link "Recent Art"
    expect(page).to have_content("Mural 7")
    expect(page).to have_content("Mural 6")
    expect(page).to have_content("Mural 5")
    expect(page).to have_content("Mural 4")
    expect(page).to have_content("Mural 3")
    expect(page).to have_content("Mural 2")
    expect(page).to_not have_content("Mural 1")
  end
end
