require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.create(full_name:"Tracy Caruso", user_name: "ycart", email:"Tracy@gmail.com")
  end

  it "is a valid user" do
    expect(@user).to be_valid
  end
end
