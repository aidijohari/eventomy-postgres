class VenueController < ApplicationController

  before_action :set_room, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:show]

  def index
    @venue = current_user.venues
  end

  def new
    @venue = current_user.venues.build
  end

  def create
    @venue = current_user.venues.build(venue_params)
    if @venue.save
      redirect_to listing_venue_path(@room), notice: "Venue saved!"
    else
      render :new, notice: "Something went wrong"
    end
  end

  def show
  end

  def listing
  end

  def pricing
  end

  def description
  end

  def photo_upload
  end

  def amenities
  end

  def location
  end

  def update
    if @venue.update(venue_params)
      flash[:notice] "Venue updated"
    else
      flash[:notice] "Something went wrong"
    end
    redirect_back(fallback_location: request.referer)
  end

  private 
    def set_room
      @venue = Venue.find(params[:id])
    end

    def venue_params
      params.require(:venue).permit(:type, :accommodate, :listing_name, :summary, :address, :price, :active)
    end

  end

end
