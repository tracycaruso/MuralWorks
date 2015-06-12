require "rails_helper"

RSpec.describe "Guest User", type: :feature do
  it "can create a new account" do
    visit root_path
    click_link "Register"
    expect(current_path).to eq(new_user_path)
    # fill_in session[:full_name], with "Tracy Caruso"
    # fill_in session[:user_name], with "Ycartc"
    # fill_in session[:email], with "Tracy@gmail.com"
    # fill_in session[:password], with "yoloyolo"
    # fill_in session[:password_confirmation], with "yoloyolo"
    # click_button 'Submit'
  end
end
