class PagesController < ApplicationController

  def home
    @artists = Artist.all
    @songs = Song.all
  end
end
