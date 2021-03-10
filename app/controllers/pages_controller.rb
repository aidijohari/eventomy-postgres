class PagesController < ApplicationController
  def home
    @venues = Venue.where(active: true).limit(3)
  end

  def tos
  end

  def search
    # if params[:search].present? && params[:search].strip != ""
    #   session[:loc_search] = params[:search]
    # end

    # if session[:loc_search] && session[:loc_search] != ""
    #   @venues_address = Venue.where(active: true).near(session[:loc_search], 5, order: "distance")
    #   @venues_all = Venue.where(active: true).all - @venues_address
    # else
    #   @venues_address = Venue.where(active: true).all
    # end

    # @search = @venues_address.ransack(params[:q])
    # @venues = @search.result

    # @arrVenues = @venues.to_a

  end

end
