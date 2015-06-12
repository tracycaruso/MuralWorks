require 'rails_helper'

RSpec.describe Mural, type: :model do

  before(:each) do
    @user = User.create(full_name: "Tracy Caruso", user_name: "Ycartc", email: "tracy@gmail.com", password: "yoloyolo", password_confirmation: "yoloyolo")
    @mural1 = {name: "Mural 1", image: "link_to_image", latitude: 10, longitude: 10, artist_name: "Megan Davis", artist_website: "megan-davis.com", date_created: Time.now, description: "one beautiful mural"}
    @mural2 = {name: "Mural 2", image: "link_to_image", latitude: 10, longitude: 10, artist_name: "Megan Davis", artist_website: "megan-davis.com", date_created: Time.now, description: "two beautiful mural"}
    @mural3 = {name: "Mural 3", image: "link_to_image", latitude: 10, longitude: 10, artist_name: "Megan Davis", artist_website: "megan-davis.com", date_created: Time.now, description: "three beautiful mural"}
    @mural4 = {name: "Mural 4", image: "link_to_image", latitude: 10, longitude: 10, artist_name: "Megan Davis", artist_website: "megan-davis.com", date_created: Time.now, description: "four beautiful mural"}

    @user.murals.create(@mural1)
    @user.murals.create(@mural2)
    @user.murals.create(@mural3)
    @user.murals.create(@mural4)
  end

  it "can return the last three most recent murals" do
    expect(Mural.most_recent.count).to eq(3)
  end

end
