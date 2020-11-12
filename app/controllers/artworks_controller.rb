class ArtworksController < ApplicationController
  before_action :artwork_find, only: [:show, :edit, :update]
  def index
    @artworks = Artwork.all
  end

  def show
    # @artwork = Artwork.find(params[:id])
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

  def edit
    # @artwork = Artwork.find(params[:id])
  end

  def update
    if @artwork.update(artwork_params)
      redirect_to artwork_path(@artwork)
    else
      render "artworks/edit"
    end
  end

  private

  def artwork_params
    params.require(:artwork).permit(:name, :artist, :description, :photo)
  end

  def artwork_find
    @artwork = Artwork.find(params[:id])
  end
end



