require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  it "can renders the about template" do
    get :about
    expect(response).to render_template("about")
  end

end
