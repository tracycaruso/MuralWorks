require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  it "can renders the about template" do
    get :home
    expect(response).to render_template("home")
  end

end
