require 'rails_helper'

RSpec.describe "Guest User can not delete users", type: :feature do

  it "can view a single users page" do
    visit root_path
    click_link "All Art"
    expect(page).to_not have_content("delete")
  end
end
