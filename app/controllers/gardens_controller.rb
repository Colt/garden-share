class GardensController < ApplicationController
  before_action :authenticate_user!, only: [:new, :credit, :show, :edit, :update, :destroy]
  before_action :lookup, except: [:index, :new, :create]
  
  def index
    @gardens = Garden.all
    @gardens.sort_by! { |g| g.zipcode}
  end

  def new
    @garden = Garden.new
  end

  def create
    g = Geocoder.search(params[:garden]["address"] + " " + params[:garden]["city"])
    geo_location_array = []
    g[0].data["geometry"]["location"].each_value do |x| 
      geo_location_array.push(x)
    end

    @garden = Garden.new garden_params

    @garden.geo_location = geo_location_array.join(", ")
    @garden.neighborhood = g[0].data["address_components"][2]["long_name"]
    @garden.zipcode = g[0].data["address_components"][7]["long_name"]
    @garden.save
    
    unless current_user.garden_id == 0
      current_user.garden_id = @garden.id
      current_user.save
    end
    redirect_to gardens_path
  end

  def show
  end

  def edit
  end

  def update
    @garden.update garden_params
    redirect_to garden_path
  end

  def destroy
    @garden.destroy
    current_user.garden_id = nil
    current_user.save
    redirect_to gardens_path
  end

  def lookup
    @garden = Garden.find(params[:id])
  end

  private
    def garden_params
     params.require(:garden).permit(:address, :city, :short_description, :description, :rules, :photo)
    end
end
