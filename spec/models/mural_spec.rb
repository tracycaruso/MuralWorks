require 'rails_helper'

RSpec.describe Mural, type: :model do

  before(:each) do
    @user = User.create(full_name: "Tracy Caruso", user_name: "Ycartc", email: "tracy@gmail.com")
    @mural1 = {name: "Mural 1", image: "link_to_image1", latitude: 10, longitude: 10, artist_name: "Megan Davis", artist_website: "megan-davis.com", date_created: Time.now, description: "one beautiful mural"}
    @mural2 = {name: "Mural 2", image: "link_to_image2", latitude: 10, longitude: 10, artist_name: "Megan Davis", artist_website: "megan-davis.com", date_created: Time.now, description: "two beautiful mural"}
    @mural3 = {name: "Mural 3", image: "link_to_image3", latitude: 10, longitude: 10, artist_name: "Megan Davis", artist_website: "megan-davis.com", date_created: Time.now, description: "three beautiful mural"}
    @mural4 = {name: "Mural 4", image: "link_to_image4", latitude: 10, longitude: 10, artist_name: "Megan Davis", artist_website: "megan-davis.com", date_created: Time.now, description: "four beautiful mural"}
    @mural5 = {name: "Mural 3", image: "link_to_image5", latitude: 10, longitude: 10, artist_name: "Megan Davis", artist_website: "megan-davis.com", date_created: Time.now, description: "three beautiful mural"}
    @mural6 = {name: "Mural 4", image: "link_to_image6", latitude: 10, longitude: 10, artist_name: "Megan Davis", artist_website: "megan-davis.com", date_created: Time.now, description: "four beautiful mural"}

    @user.murals.create(@mural1)
    @user.murals.create(@mural2)
    @user.murals.create(@mural3)
    @user.murals.create(@mural4)
    @user.murals.create(@mural5)
    @user.murals.create(@mural6)
  end

  it "can return the last six most recent murals" do
    expect(Mural.most_recent.count).to eq(6)
  end

  it "only one mural can have the same image url" do
    Mural.create(name: "Mural 1", image: "link_to_image1", latitude: 10, longitude: 10, artist_name: "Megan Davis", artist_website: "megan-davis.com", date_created: Time.now, description: "one beautiful mural")
    mural_count = Mural.count
    Mural.create(name: "Mural 1", image: "link_to_image1", latitude: 10, longitude: 10, artist_name: "Megan Davis", artist_website: "megan-davis.com", date_created: Time.now, description: "one beautiful mural")
    new_mural_count = Mural.count
    expect(mural_count).to eq(new_mural_count)
  end

end
