class VenuesController < ApplicationController

  before_action :set_venue, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:show]
  # before_action :is_authorised, only: [:listing, :pricing, :description, :photo_upload, :amenities, :location, :update]

  def index
    @venues = current_user.venues
  end

  def new
    @venue = current_user.venues.build
  end

  def create
    @venue = current_user.venues.build(venue_params)
    # render plain: params[:venue].inspect
    if @venue.save
      redirect_to listing_venue_path(@venue), notice: "Venue saved!"
    else
      flash[:alert] = "Something went wrong"
      render :new
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
    if @venue.update!(venue_params)
      flash[:notice] = "Venue updated"
    else
      flash[:alert] = "Something went wrong"
    end
    redirect_back(fallback_location: request.referer)
  end

  private 
    def set_venue
      @venue = Venue.find(params[:id])
    end

    def venue_params
      params.require(:venue).permit(:venue_type, :accommodate, :price, :listing_name, :summary, :address, :user_id, :image, :active)
    end

  end

# end
