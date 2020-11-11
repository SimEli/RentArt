class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

   def show
     @booking = booking.find(params[:id])
      # @artwork = Artwork.new
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.create(user_params)

    if @booking.save
      redirect_to artwork_path(@artwork)
    else
      render "artworks/show"
    end

  end

end


  private

   def booking_params
      params.require(:booking).permit(:name, :address)
    end


