class ArtworksController < ApplicationController

  def index
    @artworks = Artwork.all
  end

  def show
     @artwork = Artwork.find(params[:id])
      # @artwork = Artwork.new
  end

  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.create(artwork_params)

    if @artwork.save
      redirect_to artwork_path(@artwork)
    else
      render "artworks/new"
    end

  end

end


  private

   def artwork_params
      params.require(:artwork).permit(:name, :description)
    end



