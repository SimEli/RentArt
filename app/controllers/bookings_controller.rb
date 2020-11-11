class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

   def show
     @booking = Booking.find(params[:id])
      # @artwork = Artwork.new
  end

  def new
    @booking = Booking.new
    @artwork = artwork
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.artwork = artwork
    if @booking.save
      redirect_to artwork_path(@booking.artwork)
    else
      render "artworks/new"
    end

  end

  private

  def booking_params
    params.require(:booking).permit(:start, :end)
  end

  def artwork
    artwork_id = params[:artwork_id]
    Artwork.find(artwork_id)
  end
end
