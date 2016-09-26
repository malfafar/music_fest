class GeneralPagesController < ApplicationController
  def index
  end

  def artists
    @artists = Artist.order(chosen_date: "ASC", name: "ASC")
  end

  def artist
    @artist = Artist.find(params[:id])
  end

  def program
  end

  def information
  end

  def social_wall
  end

  def gallery
    @photos = Photo.page(params[:page]).per(30)
  end

end
