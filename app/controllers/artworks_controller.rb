class ArtworkController < ApplicationController
  def index
    @artworks = Artworks.all
  end
end
