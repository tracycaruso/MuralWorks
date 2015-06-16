class MuralsController < ApplicationController
  def index
    @murals = Mural.all
  end

  def new
    @mural = Mural.new
  end

  def create
    @mural = Mural.new(mural_params)
    @mural[:user_id] = current_user.id
    if @mural.save
      redirect_to @mural
    else
      render :new
    end
  end

  def show
    @mural = Mural.find(params[:id])
  end

  def edit
    @mural = Mural.find(params[:id])
  end

  def update
    @mural = Mural.find(params[:id])
    @mural.update(mural_params)
    redirect_to @mural   

  end


  private
  def mural_params
    params.require(:mural).permit(:name, :image, :latitude, :longitude, :artist_name, :date_created, :description, :user_id)
  end
end
