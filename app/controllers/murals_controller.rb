class MuralsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :edit, :update, :destroy]

  def index
    @murals = Mural.all
    @geojson = Array.new

    @murals.each do |mural|
      @geojson << {
        type: 'Feature',
        geometry:{
          type: 'Point',
          coordinates: [mural.longitude.to_f, mural.latitude.to_f]
        },
        properties: {
          name: mural.name,
          latitude: mural.latitude,
          longitude: mural.longitude,
          image: mural.image,
          :'marker-color' => '#00607d',
          :'marker-symbol' => 'circle',
          :'marker-size' => 'medium'
        }
      }
    end

    respond_to do |format|
      format.html
      format.json { render json: @geojson }
    end

  end

  def all_murals
    @murals = Mural.all
  end

  def recent
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

  def destroy
    @mural = Mural.find(params[:id])
    @mural.destroy
    redirect_to user_path(current_user)
  end


  private
  def mural_params
    params.require(:mural).permit(:name, :image, :latitude, :longitude, :artist_name, :date_created, :description, :user_id)
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
        redirect_to root_path
    end
  end

end
