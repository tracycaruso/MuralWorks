require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.create(full_name:"Tracy Caruso", email:"Tracy@gmail.com", user_name: "Ycartc", password: "yoloyolo", password_confirmation: "yoloyolo")
  end

  it "is a valid user" do
    expect(@user).to be_valid
  end

  xit "is not a valid user without a full name" do
    @user.full_name = nil
    expect(@user).not_to be_valid
  end

  xit "is not a valid user without an email" do
    @user.email = nil
    expect(@user).not_to be_valid
  end

  xit "is not a valid user without a user name" do
    @user.user_name = nil
    expect(@user).not_to be_valid
  end

  xit "is not a valid user without a password" do
    @user.password = nil
    expect(@user).not_to be_valid
  end

  xit "is not a valid user if email is already registered" do
    @user2 = User.create(full_name:"Tracy Caruso", email:"Tracy@gmail.com", user_name: "Ycartc", password: "yoloyolo", password_confirmation: "yoloyolo")
    expect(@user2).not_to be_valid
  end

  it "is not a valid user if user name is already registered" do
  end

  it "is not a valid user if email is not valid" do

  end

  it "is not a valid user if full name is too long" do

  end

  it "is not a valid user if full name is too short" do

  end

  it "is not a valid user if user name is too long" do

  end

  it "is not a valid user if user name is too short" do

  end

  it "is not a valid user if password is too long" do

  end

  it "is not a valid user if password is too short" do

  end

end
